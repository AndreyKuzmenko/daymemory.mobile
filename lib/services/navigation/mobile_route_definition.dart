import 'package:daymemory/connector/account/forgot_password_connector.dart';
import 'package:daymemory/connector/account/login_connector.dart';
import 'package:daymemory/connector/account/restore_password_connector.dart';
import 'package:daymemory/connector/account/signup_connector.dart';
import 'package:daymemory/connector/account_settings_connector/account_settings_connector.dart';
import 'package:daymemory/connector/note_image_gallery_connector/note_image_gallery_connector.dart';
import 'package:daymemory/connector/notes_connector/notes_connector.dart';
import 'package:daymemory/connector/passcode_require_after_connector/passcode_require_after_connector.dart';
import 'package:daymemory/connector/passcode_settings_connector/passcode_settings_connector.dart';
import 'package:daymemory/connector/review_connector/review_connector.dart';
import 'package:daymemory/connector/select_review_period_connector/select_review_period_connector.dart';
import 'package:daymemory/connector/show_notebooks_in_review_connector/show_notebooks_in_review_connector.dart';
import 'package:daymemory/connector/connectors.dart';
import 'package:daymemory/connector/edit_note_connector/edit_note_connector.dart';
import 'package:daymemory/connector/language_connector/language_connector.dart';
import 'package:daymemory/connector/settings_connector/settings_connector.dart';
import 'package:daymemory/connector/sync_settings_connector/sync_settings_connector.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/widget/common/splash/splash_widget.dart';
import 'package:flutter/material.dart';
import 'route_direction.dart';

class MobileRouteDefinitionService extends IRouteDefinitionService {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteDirection.rootedDevice:
        return getInstantPageTrasition(const RootedDeviceConnector(), settings);

      case RouteDirection.login:
        return MaterialPageRoute(builder: (context) => const LoginConnector(), settings: settings);

      case RouteDirection.signup:
        return MaterialPageRoute(builder: (context) => const SignupConnector(), settings: settings);

      case RouteDirection.forgotPassword:
        return MaterialPageRoute(builder: (context) => const ForgotPasswordConnector(), settings: settings);

      case RouteDirection.restorePassword:
        return MaterialPageRoute(builder: (context) => const RestorePasswordConnector(), settings: settings);

      case RouteDirection.onBoarding:
        return getInstantPageTrasition(const OnboardingConnector(), settings);

      case RouteDirection.createPin:
        return getInstantPageTrasition(const CreatePinConnector(), settings);

      case RouteDirection.enterPin:
        return getInstantPageTrasition(const EnterPinConnector(), settings);

      // case RouteDirection.allowFaceId:
      //   return getInstantPageTrasition(const FaceIdConnector(), settings);

      // case RouteDirection.allowTouchId:
      //   return getInstantPageTrasition(const TouchIdConnector(), settings);

      case RouteDirection.editNote:
        return MaterialPageRoute(builder: (context) => const EditNoteConnector(), settings: settings, fullscreenDialog: true);

      case RouteDirection.newNote:
        return MaterialPageRoute(builder: (context) => const EditNoteConnector(), settings: settings, fullscreenDialog: true);

      // case RouteDirection.editQuestionList:
      //   return MaterialPageRoute(builder: (context) => const EditQuestionListConnector(), settings: settings, fullscreenDialog: true);

      // case RouteDirection.newQuestionList:
      //   return MaterialPageRoute(builder: (context) => const EditQuestionListConnector(), settings: settings, fullscreenDialog: true);

      // case RouteDirection.answerQuestionList:
      //   return MaterialPageRoute(builder: (context) => const AnswerQuestionListConnector(), settings: settings, fullscreenDialog: true);

      // case RouteDirection.tag:
      //   return MaterialPageRoute(builder: (context) => TagConnector(tag: settings.arguments! as String), settings: settings);

      // case RouteDirection.tags:
      //   return MaterialPageRoute(builder: (context) => const EditTagsConnector(), settings: settings);

      case RouteDirection.notes:
        return getInstantPageTrasition(const NotesConnector() /*TabsConnector()*/, settings);

      case RouteDirection.root:
        return getInstantPageTrasition(const NotesConnector() /*TabsConnector()*/, settings);

      case RouteDirection.review:
        return getInstantPageTrasition(const ReviewConnector() /*TabsConnector()*/, settings);

      case RouteDirection.settings:
        return MaterialPageRoute(builder: (context) => const SettingsConnector(), settings: settings);

      case RouteDirection.accountSettings:
        return MaterialPageRoute(builder: (context) => const AccountSettingsConnector(), settings: settings);

      case RouteDirection.passcodeSettings:
        return MaterialPageRoute(builder: (context) => const PasscodeSettingsConnector(), settings: settings);

      case RouteDirection.passcodeAfterTimeSettings:
        return MaterialPageRoute(builder: (context) => const PasscodeRequireAfterConnector(), settings: settings);

      case RouteDirection.syncSettings:
        return MaterialPageRoute(builder: (context) => const SyncSettingsConnector(), settings: settings);

      case RouteDirection.languageSelector:
        return MaterialPageRoute(builder: (context) => const LanguageConnector(), settings: settings);

      case RouteDirection.showInReview:
        return MaterialPageRoute(builder: (context) => const ShowNotebooksInReviewConnector(), settings: settings);

      case RouteDirection.selectPeriodReview:
        return MaterialPageRoute(builder: (context) => const SelectReviewPeriodConnector(), settings: settings);

      case RouteDirection.noteGallery:
        return MaterialPageRoute(builder: (context) => const NoteImageGalleryConnector(), settings: settings);

      default:
        return getInstantPageTrasition(const SplashWidget(), settings);
    }
  }
}
