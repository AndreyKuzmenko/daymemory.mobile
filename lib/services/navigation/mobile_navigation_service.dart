import 'package:daymemory/connector/edit_notebook_sorting_connector/edit_notebook_sorting_connector.dart';
import 'package:daymemory/connector/encrytion_key_settings_connector/encrytion_key_settings_connector.dart';
import 'package:daymemory/connector/note_image_gallery_connector/note_image_gallery_connector.dart';
import 'package:daymemory/connector/note_options_connector/note_options_connector.dart';
import 'package:daymemory/connector/select_notebook_connector/select_notebook_connector.dart';
import 'package:daymemory/connector/sort_notebooks_connector/sort_notebooks_connector.dart';
import 'package:daymemory/services/navigation/interface_navigation_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../connector/edit_notebook_connector/edit_notebook_connector.dart';

class MobileNavigationService extends INavigationService {
  final IRouteDefinitionService routeDefinitionService;

  MobileNavigationService({
    required this.routeDefinitionService,
  });

  @override
  Future<bool> pop({required bool force, String? key}) async {
    if (force) {
      routeDefinitionService.key.currentState?.pop();
      return true;
    } else {
      return routeDefinitionService.key.currentState!.maybePop();
    }
  }

  @override
  void popDialog() {
    final context = routeDefinitionService.key.currentState?.context;
    if (context != null) {
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  @override
  Future? pushNamedLogin() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.login);

  @override
  Future? pushNamedSignup() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.signup);

  @override
  Future? pushNamedForgotPassword() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.forgotPassword);

  @override
  Future? pushNamedRestorePassword() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.restorePassword);

  @override
  Future<dynamic>? pushRemoveUntilNotes() => routeDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.notes, (_) => false);

  @override
  Future<dynamic>? pushRemoveUntilRoot() => routeDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.root, (_) => false);

  @override
  Future<dynamic>? pushCreatePin() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.createPin);

  @override
  Future<dynamic>? pushNamedEnterPin() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.enterPin);

  @override
  Future<dynamic>? pushRemoveUntilFaceId() => routeDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.allowFaceId, (_) => false);

  @override
  Future<dynamic>? pushRemoveUntilTouchId() => routeDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.allowTouchId, (_) => false);

  @override
  Future<dynamic>? pushNamedTag(String tag) => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.tag, arguments: tag);

  @override
  Future<dynamic>? pushNamedSettings() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.settings);

  @override
  Future<dynamic>? pushNamedLanguageSelector() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.languageSelector);

  @override
  Future<dynamic>? pushNamedTags() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.tags);

  @override
  Future<dynamic>? pushNamedNoteEdit() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.editNote);

  @override
  Future<dynamic>? pushNamedNewNote() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.newNote);

  @override
  Future<dynamic>? pushNamedEditQuestionList() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.editQuestionList);

  @override
  Future<dynamic>? pushNamedNewQuestionList() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.newQuestionList);

  @override
  Future<dynamic>? pushNamedAnswerQuestionList() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.answerQuestionList);

  @override
  Future? pushRemoveRootedDevice() => routeDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.rootedDevice, (_) => false);

  @override
  Future<dynamic>? pushNamedOnboarding() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.onBoarding);

  @override
  Future<dynamic>? pushNamedReview() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.review);

  @override
  Future<dynamic>? pushNamedShowInReview() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.showInReview);

  @override
  Future<dynamic>? pushNamedSelectPeriodReview() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.selectPeriodReview);

  @override
  Future<dynamic>? pushNamedPasscodeSettings() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.passcodeSettings);

  @override
  Future<dynamic>? pushNamedPasscodeAfterTimeSettings() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.passcodeAfterTimeSettings);

  @override
  Future<dynamic>? pushNamedSyncSettings() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.syncSettings);

  @override
  Future<dynamic>? pushNamedAccountSettings() => routeDefinitionService.key.currentState?.pushNamed(RouteDirection.accountSettings);

  @override
  Future<dynamic>? pushNamedEncryptionKeySettings() async {
    final context = routeDefinitionService.key.currentState?.context;
    showCupertinoModalBottomSheet(
      context: context!,
      builder: (context) => const EncryptionKeySettingsConnector(),
    );
  }
  // @override
  // Future<dynamic>? pushNamedReview() async {
  //   final context = routeDefinitionService.key.currentState?.context;
  //   showModalBottomSheet(
  //     context: context!,
  //     builder: (context) => const ReviewConnector(),
  //     isScrollControlled: true,
  //   );
  // }

  @override
  Future<dynamic>? pushNamedSelectNotebookSortingOrder() async {
    final context = routeDefinitionService.key.currentState?.context;
    showCupertinoModalBottomSheet(
      context: context!,
      builder: (context) => const EditNotebookSortingConnector(),
    );
  }

  @override
  Future<dynamic>? pushNamedNoteImageGallery() async {
    final context = routeDefinitionService.key.currentState?.context;
    showModalBottomSheet(
      context: context!,
      builder: (context) => const NoteImageGalleryConnector(),
      isScrollControlled: true,
    );
  }

  @override
  Future<dynamic>? pushNamedNewNotebook() async {
    final context = routeDefinitionService.key.currentState?.context;
    showCupertinoModalBottomSheet(
      context: context!,
      builder: (context) => const EditNotebookConnector(),
    );
  }

  @override
  Future<dynamic>? pushNamedEditNotebook() async {
    final context = routeDefinitionService.key.currentState?.context;
    showCupertinoModalBottomSheet(
      context: context!,
      builder: (context) => const EditNotebookConnector(),
    );
  }

  @override
  Future<dynamic>? pushNamedNoteOptions() async {
    final context = routeDefinitionService.key.currentState?.context;
    showCupertinoModalBottomSheet(
      context: context!,
      builder: (context) => const NoteOptionsConnector(),
    );
  }

  @override
  Future<dynamic>? pushNamedSelectNotebookOptions() async {
    final context = routeDefinitionService.key.currentState?.context;
    showCupertinoModalBottomSheet(
      context: context!,
      builder: (context) => const SelectNotebookConnector(),
    );
  }

  @override
  Future<dynamic>? pushNamedSortNotebooks() async {
    final context = routeDefinitionService.key.currentState?.context;
    showCupertinoModalBottomSheet(
      context: context!,
      builder: (context) => const SortNotebooksConnector(),
    );
  }
}
