import 'package:daymemory/services/navigation/interface_navigation_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericNavigationService extends INavigationService {
  final IRouteDefinitionService frameRouteDefinitionService;
  final IRouteDefinitionService genericRouteDefinitionService;

  GenericNavigationService({
    required this.frameRouteDefinitionService,
    required this.genericRouteDefinitionService,
  });

  @override
  Future<bool> pop({required bool force, String? key}) async {
    if (force) {
      genericRouteDefinitionService.key.currentState?.pop();
      return true;
    } else {
      if (key == RouteDirection.newNote || key == RouteDirection.editNote) {
        return frameRouteDefinitionService.key.currentState!.maybePop();
      } else {
        genericRouteDefinitionService.key.currentState!.maybePop();
        return true;
      }
    }
  }

  @override
  void popDialog() {
    final context = genericRouteDefinitionService.key.currentState?.context;
    if (context != null) {
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  @override
  Future? pushNamedLogin() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.login);

  @override
  Future? pushNamedSignup() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.signup);

  @override
  Future? pushNamedForgotPassword() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.forgotPassword);

  @override
  Future? pushNamedRestorePassword() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.restorePassword);

  @override
  Future<dynamic>? pushRemoveUntilNotes() => frameRouteDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.notes, (_) => false);

  @override
  Future<dynamic>? pushRemoveUntilRoot() => genericRouteDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.root, (_) => false);

  @override
  Future<dynamic>? pushCreatePin() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.createPin);

  @override
  Future<dynamic>? pushNamedEnterPin() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.enterPin);

  @override
  Future<dynamic>? pushRemoveUntilFaceId() => frameRouteDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.allowFaceId, (_) => false);

  @override
  Future<dynamic>? pushRemoveUntilTouchId() => frameRouteDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.allowTouchId, (_) => false);

  @override
  Future<dynamic>? pushNamedTag(String tag) => frameRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.tag, arguments: tag);

  @override
  Future<dynamic>? pushNamedSettings() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.settings);

  @override
  Future<dynamic>? pushNamedLanguageSelector() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.languageSelector);

  @override
  Future<dynamic>? pushNamedTags() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.tags);

  @override
  Future<dynamic>? pushNamedNoteEdit() => frameRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.editNote);

  @override
  Future<dynamic>? pushNamedNewNote() => frameRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.newNote);

  @override
  Future<dynamic>? pushNamedReview() => frameRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.review);

  @override
  Future<dynamic>? pushNamedEditQuestionList() => frameRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.editQuestionList);

  @override
  Future<dynamic>? pushNamedNewQuestionList() => frameRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.newQuestionList);

  @override
  Future<dynamic>? pushNamedAnswerQuestionList() => frameRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.answerQuestionList);

  @override
  Future? pushRemoveRootedDevice() => frameRouteDefinitionService.key.currentState?.pushNamedAndRemoveUntil(RouteDirection.rootedDevice, (_) => false);

  @override
  Future<dynamic>? pushNamedOnboarding() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.onBoarding);

  @override
  Future<dynamic>? pushNamedNewNotebook() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.newNotebook);

  @override
  Future<dynamic>? pushNamedEditNotebook(String notebookId) => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.editNotebook, arguments: notebookId);

  @override
  Future<dynamic>? pushNamedNoteOptions() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.noteOptions);

  @override
  Future<dynamic>? pushNamedSelectNotebookOptions() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.selectNotebook);

  @override
  Future<dynamic>? pushNamedNoteImageGallery() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.noteGallery);

  @override
  Future<dynamic>? pushNamedSortNotebooks() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.sortNotebooks);

  @override
  Future<dynamic>? pushNamedShowInReview() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.showInReview);

  @override
  Future<dynamic>? pushNamedSelectPeriodReview() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.selectPeriodReview);

  @override
  Future<dynamic>? pushNamedSelectNotebookSortingOrder() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.selectNotebookSortingOrder);

  @override
  Future<dynamic>? pushNamedPasscodeSettings() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.passcodeSettings);

  @override
  Future<dynamic>? pushNamedPasscodeAfterTimeSettings() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.passcodeAfterTimeSettings);

  @override
  Future<dynamic>? pushNamedSyncSettings() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.syncSettings);

  @override
  Future<dynamic>? pushNamedAccountSettings() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.accountSettings);

  @override
  Future<dynamic>? pushNamedEncryptionKeySettings() => genericRouteDefinitionService.key.currentState?.pushNamed(RouteDirection.encryptionKeySettings);
}
