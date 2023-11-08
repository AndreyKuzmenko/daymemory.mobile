import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/navigation/interface_navigation_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/actions.dart';

class NavigationConfigItem {
  final RouteType routeType;

  final INavigationService service;

  NavigationConfigItem({required this.routeType, required this.service});
}

class NavigationMiddleware implements MiddlewareClass<AppState> {
  final List<NavigationConfigItem> items;
  final IDeviceInfoService deviceInfoService;
  NavigationMiddleware({
    required this.items,
    required this.deviceInfoService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    var routeType = deviceInfoService.deviceType == DeviceType.phone ? RouteType.mobile : RouteType.generic;
    var item = items.firstWhere((element) => element.routeType == routeType);

    var navigationService = item.service;

    if (action is CloseDialogAction) {
      navigationService.popDialog();
    } else if (action is PopBackStackAction) {
      await navigationService.pop(force: false, key: action.key);
    } else if (action is NavigateToRootAction) {
      await navigationService.pushRemoveUntilRoot();
    } else if (action is NavigateToLogInAction) {
      await navigationService.pushNamedLogin();
    } else if (action is NavigateToSignupAction) {
      await navigationService.pushNamedSignup();
    } else if (action is NavigateToForgotPasswordAction) {
      await navigationService.pushNamedForgotPassword();
    } else if (action is NavigateToRestorePasswordAction) {
      await navigationService.pushNamedRestorePassword();
    } else if (action is NavigateToRootedDeviceAction) {
      await navigationService.pushRemoveRootedDevice();
    } else if (action is NavigateToNotesAction) {
      await navigationService.pushRemoveUntilNotes();
    } else if (action is NavigateToCreatePinAction) {
      await navigationService.pushCreatePin();
    } else if (action is NavigateToEnterPinAction) {
      await navigationService.pushNamedEnterPin();
    } else if (action is NavigateToTagAction) {
      await navigationService.pushNamedTag(action.tag);
    } else if (action is NavigateToSettingsAction) {
      await navigationService.pushNamedSettings();
    } else if (action is NavigateToLanguageSelectionAction) {
      await navigationService.pushNamedLanguageSelector();
    } else if (action is NavigateToTagsAction) {
      await navigationService.pushNamedTags();
    } else if (action is NavigateToNoteDetailAction) {
      await navigationService.pushNamedNoteEdit();
    } else if (action is NavigateToNewNoteAction) {
      await navigationService.pushNamedNewNote();
    } else if (action is NavigateToEditQuestionListAction) {
      await navigationService.pushNamedEditQuestionList();
    } else if (action is NavigateToNewQuestionListAction) {
      await navigationService.pushNamedNewQuestionList();
    } else if (action is NavigateToAnswerQuestionListAction) {
      await navigationService.pushNamedAnswerQuestionList();
    } else if (action is NavigateToBiometricAuthAction) {
      await navigationService.pushRemoveUntilBiometricAuth();
    } else if (action is NavigateToOnboardingAction) {
      await navigationService.pushNamedOnboarding();
    } else if (action is NavigateToReviewAction) {
      await navigationService.pushNamedReview();
    } else if (action is NavigateToNewNotebookAction) {
      await navigationService.pushNamedNewNotebook();
    } else if (action is NavigateToEditNotebookAction) {
      await navigationService.pushNamedEditNotebook(action.notebookId);
    } else if (action is NavigateToNoteOptionsAction) {
      await navigationService.pushNamedNoteOptions();
    } else if (action is NavigateToSelectNotebookAction) {
      await navigationService.pushNamedSelectNotebookOptions();
    } else if (action is NavigateToNoteImageGalleryAction) {
      await navigationService.pushNamedNoteImageGallery();
    } else if (action is NavigateToSortNotebooksAction) {
      await navigationService.pushNamedSortNotebooks();
    } else if (action is NavigateToShowInReviewAction) {
      await navigationService.pushNamedShowInReview();
    } else if (action is NavigateToSelectPeriodReviewAction) {
      await navigationService.pushNamedSelectPeriodReview();
    } else if (action is NavigateToNotebookSortingOrderAction) {
      await navigationService.pushNamedSelectNotebookSortingOrder();
    } else if (action is NavigateToPasscodeAction) {
      await navigationService.pushNamedPasscodeSettings();
    } else if (action is NavigateToPasscodeAfterTimeAction) {
      await navigationService.pushNamedPasscodeAfterTimeSettings();
    } else if (action is NavigateToSyncAction) {
      await navigationService.pushNamedSyncSettings();
    } else if (action is NavigateToAccountAction) {
      await navigationService.pushNamedAccountSettings();
    } else if (action is NavigateToEncryptionAction) {
      await navigationService.pushNamedEncryptionKeySettings();
    } else if (action is NavigateToSelectTagsAction) {
      await navigationService.pushNamedSelectTags();
    }
  }
}
