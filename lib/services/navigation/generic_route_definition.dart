import 'package:daymemory/connector/account/forgot_password_connector.dart';
import 'package:daymemory/connector/account/login_connector.dart';
import 'package:daymemory/connector/account/restore_password_connector.dart';
import 'package:daymemory/connector/account/signup_connector.dart';
import 'package:daymemory/connector/account_settings_connector/account_settings_connector.dart';
import 'package:daymemory/connector/edit_notebook_connector/edit_notebook_connector.dart';
import 'package:daymemory/connector/edit_notebook_sorting_connector/edit_notebook_sorting_connector.dart';
import 'package:daymemory/connector/edit_tags_connector/edit_tags_connector.dart';
import 'package:daymemory/connector/encrytion_key_settings_connector/encrytion_key_settings_connector.dart';
import 'package:daymemory/connector/note_image_gallery_connector/note_image_gallery_connector.dart';
import 'package:daymemory/connector/note_options_connector/note_options_connector.dart';
import 'package:daymemory/connector/passcode_require_after_connector/passcode_require_after_connector.dart';
import 'package:daymemory/connector/passcode_settings_connector/passcode_settings_connector.dart';
import 'package:daymemory/connector/select_notebook_connector/select_notebook_connector.dart';
import 'package:daymemory/connector/select_review_period_connector/select_review_period_connector.dart';
import 'package:daymemory/connector/select_tags_connector/select_tags_connector.dart';
import 'package:daymemory/connector/show_notebooks_in_review_connector/show_notebooks_in_review_connector.dart';
import 'package:daymemory/connector/connectors.dart';
import 'package:daymemory/connector/language_connector/language_connector.dart';
import 'package:daymemory/connector/settings_connector/settings_connector.dart';
import 'package:daymemory/connector/sort_notebooks_connector/sort_notebooks_connector.dart';
import 'package:daymemory/connector/sync_settings_connector/sync_settings_connector.dart';
import 'package:daymemory/connector/touch_id_connector/touch_id_connector.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:daymemory/widget/common/splash/splash_widget.dart';
import 'package:flutter/material.dart';

class GenericRouteDefinitionService extends IRouteDefinitionService {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteDirection.rootedDevice:
        return getInstantPageTrasition(const RootedDeviceConnector(), settings);

      case RouteDirection.login:
        return showDialogPopup(const LoginConnector(), settings, Colors.transparent);

      case RouteDirection.signup:
        return showDialogPopup(const SignupConnector(), settings, Colors.transparent);

      case RouteDirection.forgotPassword:
        return showDialogPopup(const ForgotPasswordConnector(), settings, Colors.transparent);

      case RouteDirection.restorePassword:
        return showDialogPopup(const RestorePasswordConnector(), settings, Colors.transparent);

      case RouteDirection.onBoarding:
        return getInstantPageTrasition(const OnboardingConnector(), settings);

      case RouteDirection.createPin:
        return showDialogPopup(const CreatePinConnector(), settings, Colors.transparent);

      case RouteDirection.enterPin:
        return getInstantPageTrasition(const EnterPinConnector(), settings);

      case RouteDirection.allowFaceId:
        return getInstantPageTrasition(const FaceIdConnector(), settings);

      case RouteDirection.allowTouchId:
        return getInstantPageTrasition(const TouchIdConnector(), settings);

      case RouteDirection.editNotebook:
        return showDialogPopup(EditNotebookConnector(notebookId: settings.arguments as String), settings, Colors.black.withAlpha(100));

      case RouteDirection.newNotebook:
        return showDialogPopup(const EditNotebookConnector(notebookId: null), settings, Colors.black.withAlpha(100));

      case RouteDirection.selectNotebook:
        return showDialogPopup(const SelectNotebookConnector(), settings, Colors.black.withAlpha(100));

      case RouteDirection.noteOptions:
        return showDialogPopup(const NoteOptionsConnector(), settings, Colors.black.withAlpha(100));

      case RouteDirection.sortNotebooks:
        return showDialogPopup(const SortNotebooksConnector(), settings, Colors.black.withAlpha(100));

      case RouteDirection.showInReview:
        return showDialogPopup(const ShowNotebooksInReviewConnector(), settings, Colors.transparent);

      case RouteDirection.selectPeriodReview:
        return showDialogPopup(const SelectReviewPeriodConnector(), settings, Colors.transparent);

      case RouteDirection.selectNotebookSortingOrder:
        return showDialogPopup(const EditNotebookSortingConnector(), settings, Colors.transparent);

      // case RouteDirection.editNote:
      //   return getInstantPageTrasition(const EditNoteConnector(), settings);

      // case RouteDirection.newNote:
      //   return getInstantPageTrasition(const EditNoteConnector(), settings);

      // case RouteDirection.review:
      //   return getInstantPageTrasition(const ReviewConnector(), settings);

      // case RouteDirection.editQuestionList:
      //   return MaterialPageRoute(builder: (context) => const EditQuestionListConnector(), settings: settings, fullscreenDialog: true);

      // case RouteDirection.newQuestionList:
      //   return MaterialPageRoute(builder: (context) => const EditQuestionListConnector(), settings: settings, fullscreenDialog: true);

      // case RouteDirection.answerQuestionList:
      //   return MaterialPageRoute(builder: (context) => const AnswerQuestionListConnector(), settings: settings, fullscreenDialog: true);

      // case RouteDirection.tag:
      //   return MaterialPageRoute(builder: (context) => TagConnector(tag: settings.arguments! as String), settings: settings);

      case RouteDirection.tags:
        return showDialogPopup(const EditTagsConnector(), settings, Colors.transparent);

      case RouteDirection.selectTags:
        return showDialogPopup(const SelectTagsConnector(), settings, Colors.transparent);

      // case RouteDirection.notes:
      //   return getInstantPageTrasition(const NotesConnector() /*TabsConnector()*/, settings);

      case RouteDirection.settings:
        return showDialogPopup(const SettingsConnector(), settings, Colors.black.withAlpha(100));

      case RouteDirection.syncSettings:
        return showDialogPopup(const SyncSettingsConnector(), settings, Colors.transparent);

      case RouteDirection.passcodeSettings:
        return showDialogPopup(const PasscodeSettingsConnector(), settings, Colors.transparent);

      case RouteDirection.passcodeAfterTimeSettings:
        return showDialogPopup(const PasscodeRequireAfterConnector(), settings, Colors.transparent);

      case RouteDirection.encryptionKeySettings:
        return showDialogPopup(const EncryptionKeySettingsConnector(), settings, Colors.transparent);

      case RouteDirection.accountSettings:
        return showDialogPopup(const AccountSettingsConnector(), settings, Colors.transparent);

      case RouteDirection.languageSelector:
        return showDialogPopup(const LanguageConnector(), settings, Colors.transparent);

      //return showModalBottom(const ReviewConnector());

      case RouteDirection.noteGallery:
        return getInstantPageTrasition(const NoteImageGalleryConnector(), settings);

      default:
        return getInstantPageTrasition(const SplashWidget(), settings);
    }
  }
}
