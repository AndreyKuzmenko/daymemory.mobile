import 'package:daymemory/redux/action/common_action.dart';
import 'package:daymemory/redux/middleware/answer_question_middleware.dart';
import 'package:daymemory/redux/middleware/auth_middleware.dart';
import 'package:daymemory/redux/middleware/notebook_middleware.dart';
import 'package:daymemory/redux/middleware/notebooks_middleware.dart';
import 'package:daymemory/redux/middleware/reviews_middleware.dart';
import 'package:daymemory/redux/middleware/sync_middleware.dart';
import 'package:daymemory/redux/middleware/system_middleware.dart';
import 'package:daymemory/redux/middleware/tags_edit_middleware.dart';
import 'package:daymemory/redux/middleware/tags_middleware.dart';
import 'package:daymemory/redux/middleware/initialization_middleware.dart';
import 'package:daymemory/redux/middleware/note_middleware.dart';
import 'package:daymemory/redux/middleware/notes_middleware.dart';
import 'package:daymemory/redux/middleware/question_list_middleware.dart';
import 'package:daymemory/redux/middleware/question_lists_middleware.dart';
import 'package:daymemory/redux/middleware/settings_middleware.dart';
import 'package:daymemory/redux/middleware/middlewares.dart';
import 'package:daymemory/redux/middleware/tabs_middleware.dart';
import 'package:daymemory/redux/reducer/account_reducer.dart';
import 'package:daymemory/redux/reducer/answer_question_reducer.dart';
import 'package:daymemory/redux/reducer/device_reducer.dart';
import 'package:daymemory/redux/reducer/edit_tags_reducer.dart';
import 'package:daymemory/redux/reducer/note_image_gallery_reducer.dart';
import 'package:daymemory/redux/reducer/notebook_reducer.dart';
import 'package:daymemory/redux/reducer/notebooks_reducer.dart';
import 'package:daymemory/redux/reducer/reviews_reducer.dart';
import 'package:daymemory/redux/reducer/selected_menu_item_reducer.dart';
import 'package:daymemory/redux/reducer/sync_reducer.dart';
import 'package:daymemory/redux/reducer/tags_reducer.dart';
import 'package:daymemory/redux/reducer/note_reducers.dart';
import 'package:daymemory/redux/reducer/notes_reducer.dart';
import 'package:daymemory/redux/reducer/question_list_reducers.dart';
import 'package:daymemory/redux/reducer/question_lists_reducer.dart';
import 'package:daymemory/redux/reducer/tabs_reducer.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/store/store_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import 'reducer/reducers.dart';

IStoreService initStore() {
  return StoreService(
    Store<AppState>(
      (AppState state, dynamic action) {
        if (action is ResetStoreToDefaultAction) {
          return AppState.initial();
        }

        return AppState((b) => b
          ..onBoardingState = onBoardingReducer(
            state.onBoardingState,
            action,
          ).toBuilder()
          ..dialogsState = dialogReducer(
            state.dialogsState,
            action,
          )?.toBuilder()
          ..deviceState = deviceReducer(
            state.deviceState,
            action,
          ).toBuilder()
          ..settingsState = settingsReducer(
            state.settingsState,
            action,
          ).toBuilder()
          ..syncState = syncReducer(
            state.syncState,
            action,
          ).toBuilder()
          ..accountState = accountReducer(
            state.accountState,
            action,
          ).toBuilder()
          ..noteState = noteReducer(
            state.noteState,
            action,
          ).toBuilder()
          ..tagsState = tagsReducer(
            state.tagsState,
            action,
          ).toBuilder()
          ..notebooksState = notebooksReducer(
            state.notebooksState,
            action,
          ).toBuilder()
          ..editNotebookState = notebookReducer(
            state.editNotebookState,
            action,
          ).toBuilder()
          ..selectedMenuItemState = selectedMenuItemReducer(
            state.selectedMenuItemState,
            action,
          ).toBuilder()
          ..editTagsState = editTagsReducer(
            state.editTagsState,
            action,
          ).toBuilder()
          ..questionListsState = questionListsReducer(
            state.questionListsState,
            action,
          ).toBuilder()
          ..questionListState = questionListReducer(
            state.questionListState,
            action,
          ).toBuilder()
          ..answerQuestionState = answerQuestionReducer(
            state.answerQuestionState,
            action,
          ).toBuilder()
          ..notesState = notesReducer(
            state.notesState,
            action,
          ).toBuilder()
          ..noteImageGalleryState = noteImageGalleryReducer(
            state.noteImageGalleryState,
            action,
          ).toBuilder()
          ..reviewsState = reviewsReducer(
            state.reviewsState,
            action,
          ).toBuilder()
          ..sideMenuState = sideMenuReducer(
            state.sideMenuState,
            action,
          ).toBuilder()
          ..createPinState = createPinReducer(
            state.createPinState,
            action,
          ).toBuilder()
          ..enterPinState = enterPinReducer(
            state.enterPinState,
            action,
          ).toBuilder()
          ..faceIdState = faceIdReducer(
            state.faceIdState,
            action,
          ).toBuilder()
          ..jailbreakType = jailBreakReducer(
            state.jailbreakType,
            action,
          )
          ..loginState = loginReducer(
            state.loginState,
            action,
          ).toBuilder()
          ..tabsState = tabsReducer(
            state.tabsState,
            action,
          ).toBuilder()
          ..screenBlockingState = screenBlockingReducer(
            state.screenBlockingState,
            action,
          ).toBuilder());
      },
      initialState: AppState.initial(),
      middleware: [
        InitializationMiddleware(
          settingsService: ServiceLocator.getIt.get(),
          deviceInfoService: ServiceLocator.getIt.get(),
          contextService: ServiceLocator.getIt.get(),
          tagService: ServiceLocator.getIt.get(),
          notebookService: ServiceLocator.getIt.get(),
        ),
        NavigationMiddleware(
          items: [
            NavigationConfigItem(routeType: RouteType.generic, service: ServiceLocator.getIt.get(instanceName: RouteType.generic.toString())),
            NavigationConfigItem(routeType: RouteType.mobile, service: ServiceLocator.getIt.get(instanceName: RouteType.mobile.toString())),
          ],
          deviceInfoService: ServiceLocator.getIt.get(),
        ),
        TokenExtractorMiddleware(
          settingsService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          loggingService: ServiceLocator.getIt.get(),
        ),
        TokenRefresherMiddleware(
          settingsService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
        ),
        JailbreakDetectionMiddleware(
          jailbreakService: ServiceLocator.getIt.get(),
          loggingService: ServiceLocator.getIt.get(),
          deviceInfoService: ServiceLocator.getIt.get(),
        ),
        LogoutMiddleware(),
        const ActionDelayMiddleware(),
        LoggingMiddleware(
          loggingService: ServiceLocator.getIt.get(),
        ),
        SystemMiddleware(
          deviceFeedbackService: ServiceLocator.getIt.get(),
          clipboardService: ServiceLocator.getIt.get(),
        ),
        AuthMiddleware(
          dialogService: ServiceLocator.getIt.get(),
          networkUserService: ServiceLocator.getIt.get(),
          authService: ServiceLocator.getIt.get(),
          contextService: ServiceLocator.getIt.get(),
          loggingService: ServiceLocator.getIt.get(),
          settingsService: ServiceLocator.getIt.get(),
          encryptService: ServiceLocator.getIt.get(),
          configService: ServiceLocator.getIt.get(),
        ),
        TabsMiddleware(
          deviceFeedbackService: ServiceLocator.getIt.get(),
        ),
        TagsMiddleware(
          tagService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
        ),
        NotebooksMiddleware(
          notebookService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
          settingsService: ServiceLocator.getIt.get(),
        ),
        NotebookMiddleware(
          notebookService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
          contextService: ServiceLocator.getIt.get(),
          settingsService: ServiceLocator.getIt.get(),
        ),
        QuestionListsMiddleware(
          //questionListRepository: serviceLocator.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
        ),
        QuestionListMiddleware(
          //questionListRepository: serviceLocator.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
        ),
        SettingsMiddleware(
          contextService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          geolocatorService: ServiceLocator.getIt.get(),
          storageService: ServiceLocator.getIt.get(),
          deviceInfoService: ServiceLocator.getIt.get(),
          settingsService: ServiceLocator.getIt.get(),
          encryptService: ServiceLocator.getIt.get(),
          configService: ServiceLocator.getIt.get(),
          emailSenderService: ServiceLocator.getIt.get(),
        ),
        SyncMiddleware(
          settingsService: ServiceLocator.getIt.get(),
          httpSyncService: ServiceLocator.getIt.get(),
          noteService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          noteNetworkService: ServiceLocator.getIt.get(),
          fileNetworkService: ServiceLocator.getIt.get(),
          fileService: ServiceLocator.getIt.get(),
          configService: ServiceLocator.getIt.get(),
          tagService: ServiceLocator.getIt.get(),
          loggingService: ServiceLocator.getIt.get(),
          tagNetworkService: ServiceLocator.getIt.get(),
          deviceService: ServiceLocator.getIt.get(),
          notebookNetworkService: ServiceLocator.getIt.get(),
          notebookService: ServiceLocator.getIt.get(),
          contextService: ServiceLocator.getIt.get(),
          encryptService: ServiceLocator.getIt.get(),
        ),
        NotesMiddleware(
          noteRepository: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
          deviceFeedbackService: ServiceLocator.getIt.get(),
        ),
        ReviewsMiddleware(
          noteRepository: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
          deviceFeedbackService: ServiceLocator.getIt.get(),
          contextService: ServiceLocator.getIt.get(),
          settingsService: ServiceLocator.getIt.get(),
        ),
        NoteMiddleware(
          geolocatorService: ServiceLocator.getIt.get(),
          noteService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
          contextService: ServiceLocator.getIt.get(),
          fileSelectorService: ServiceLocator.getIt.get(),
          videoThumbnailService: ServiceLocator.getIt.get(),
        ),
        TagsEditMiddleware(
          dialogService: ServiceLocator.getIt.get(),
          permissionService: ServiceLocator.getIt.get(),
          tagService: ServiceLocator.getIt.get(),
        ),
        AnswerQuestionMiddleware(
          deviceFeedbackService: ServiceLocator.getIt.get(),
        ),
        CreatePinMiddleware(
          deviceFeedbackService: ServiceLocator.getIt.get(),
          settingsService: ServiceLocator.getIt.get(),
        ),
        EnterPinMiddleware(
          settingsService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          deviceFeedbackService: ServiceLocator.getIt.get(),
        ),
        BiometricMiddleware(
          settingsService: ServiceLocator.getIt.get(),
          localAuthService: ServiceLocator.getIt.get(),
          dialogService: ServiceLocator.getIt.get(),
          contextService: ServiceLocator.getIt.get(),
        ),
        ScreenBlockingMiddleware(
          configService: ServiceLocator.getIt.get(),
          settingsService: ServiceLocator.getIt.get(),
        ),
        OnboardingMiddleware(
          settingsService: ServiceLocator.getIt.get(),
        ),
      ],
    ),
  );
}
