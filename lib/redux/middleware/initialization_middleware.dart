import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/account_action.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/device_action.dart';
import 'package:daymemory/redux/action/menu_item_action.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/action/sync_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_notebook_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_tag_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InitializationMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final IDeviceInfoService deviceInfoService;
  final ITagService tagService;
  final INotebookService notebookService;
  final IContextService contextService;

  AppLocalizations? get _locale => contextService.locale;

  InitializationMiddleware({
    required this.settingsService,
    required this.deviceInfoService,
    required this.tagService,
    required this.notebookService,
    required this.contextService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is AppInitializationAction) {
      store.dispatch(LoadSyncStatusAction());

      var settings = await settingsService.getSettings();
      var token = settings.accessToken;
      var userInfo = await settingsService.getUserInfo();
      var isAuthenticated = token != null && token.isNotEmpty;
      store.dispatch(UserAuthChangedAction(isAuthenticated: isAuthenticated));

      if (userInfo != null) {
        store.dispatch(UserInfoLoadedAction(
          email: userInfo.email,
          firstName: userInfo.firstName,
          lastName: userInfo.lastName,
          isEncryptionEnabled: userInfo.isEncryptionEnabled,
          isAuthenticated: isAuthenticated,
          encryptedText: userInfo.encryptedText,
        ));
      }

      store.dispatch(DeviceDataLoadedAction(
        deviceType: deviceInfoService.deviceType,
      ));

      //await secureStorageService.setLanguage(deviceInfoService.localeName);
      store.dispatch(action.nextAction);
    } else if (action is FirstScreenAction) {
      var settings = await settingsService.getSettings();
      final pin = settings.pinCode;

      if (store.state.settingsState.isPasscodeEnabled && pin != null && pin.isNotEmpty) {
        store.dispatch(NavigateToEnterPinAction());
      } else {
        store.dispatch(NavigateToRootAction());
      }
    } else if (action is AppFirstInitializationAction) {
      //await _setupDefaultTags(store);
      await _setupNotebooks(store);
    } else if (action is ChangeScreenSizeAction) {
      store.dispatch(ScreenWidthChangedAction(
        deviceWidthType: action.size.width > 900 ? DeviceWidthType.wide : DeviceWidthType.narrow,
        size: action.size,
      ));
    }
  }

  Future _setupNotebooks(Store<AppState> store) async {
    var notebookId = const Uuid().v4();
    var notebook = await notebookService.create(notebookId, _locale!.notebook_general, DateTime.now().toUtc(), 0, true, true, SortingType.byCreatedDate);

    var settings = await settingsService.getSettings();
    settings.defaultNotebookId = notebookId;
    await settingsService.setSettings(settings);

    store.dispatch(LoadNotebooksAction());
    store.dispatch(SelectMenuItemAction(itemId: notebookId, title: notebook.title, nextAction: LoadNotesAction(notebookId: notebookId)));
  }

  // Future _setupDefaultTags(Store<AppState> store) async {
  //   await tagService.createTag(const Uuid().v4(), _locale!.tag_family, 0, DateTime.now().toUtc(), true);
  //   await tagService.createTag(const Uuid().v4(), _locale!.tag_work, 1, DateTime.now().toUtc(), true);
  //   await tagService.createTag(const Uuid().v4(), _locale!.tag_life, 2, DateTime.now().toUtc(), true);
  //   store.dispatch(LoadTagsAction());
  // }
}
