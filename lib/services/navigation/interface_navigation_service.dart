abstract class INavigationService {
  Future<bool> pop({required bool force, String? key});

  void popDialog();

  Future<dynamic>? pushNamedLogin();

  Future<dynamic>? pushNamedSignup();

  Future<dynamic>? pushNamedForgotPassword();

  Future<dynamic>? pushNamedRestorePassword();

  Future<dynamic>? pushRemoveUntilNotes();

  Future<dynamic>? pushRemoveUntilRoot();

  Future<dynamic>? pushCreatePin();

  Future<dynamic>? pushNamedEnterPin();

  Future<dynamic>? pushRemoveUntilBiometricAuth();

  Future<dynamic>? pushNamedNoteEdit();

  Future<dynamic>? pushNamedNewQuestionList();

  Future<dynamic>? pushNamedEditQuestionList();

  Future<dynamic>? pushNamedAnswerQuestionList();

  Future<dynamic>? pushNamedTag(String tag);

  Future<dynamic>? pushNamedSettings();

  Future<dynamic>? pushNamedLanguageSelector();

  Future<dynamic>? pushNamedTags();

  Future<dynamic>? pushNamedNewNote();

  Future<dynamic>? pushRemoveRootedDevice();

  Future<dynamic>? pushNamedOnboarding();

  Future<dynamic>? pushNamedReview();

  Future<dynamic>? pushNamedNewNotebook();

  Future<dynamic>? pushNamedEditNotebook(String notebookId);

  Future<dynamic>? pushNamedNoteOptions();

  Future<dynamic>? pushNamedSelectNotebookOptions();

  Future<dynamic>? pushNamedNoteImageGallery();

  Future<dynamic>? pushNamedSortNotebooks();

  Future<dynamic>? pushNamedShowInReview();

  Future<dynamic>? pushNamedSelectPeriodReview();

  Future<dynamic>? pushNamedSelectNotebookSortingOrder();

  Future<dynamic>? pushNamedPasscodeSettings();

  Future<dynamic>? pushNamedPasscodeAfterTimeSettings();

  Future<dynamic>? pushNamedSyncSettings();

  Future<dynamic>? pushNamedAccountSettings();

  Future<dynamic>? pushNamedEncryptionKeySettings();

  Future<dynamic>? pushNamedSelectTags();
}
