import 'dart:async';

import 'package:daymemory/data/dtos/question_dto.dart';

import 'common_action.dart';

class PopBackStackAction implements ILoggingAction {
  final bool force;
  final String? key;
  final Completer<bool> _completer = Completer();

  PopBackStackAction({this.force = false, this.key});

  Future<bool> result() => _completer.future;

  void complete(bool result) => _completer.complete(result);

  @override
  String toLogString() {
    return 'Pop back stack';
  }
}

class NavigateToRootAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Root';
  }
}

class NavigateToLogInAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to LogIn';
  }
}

class NavigateToSignupAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Sign up';
  }
}

class NavigateToForgotPasswordAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Forgot Password';
  }
}

class NavigateToRestorePasswordAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Restore Password Password';
  }
}

class NavigateToNotesAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Notes';
  }
}

class NavigateToQuestionListsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Question List';
  }
}

class NavigateToAnswerQuestionListAction implements ILoggingAction {
  final String questionListTitle;

  final List<String> questions;

  NavigateToAnswerQuestionListAction({required this.questionListTitle, required this.questions});

  @override
  String toLogString() {
    return 'Navigate to Answer Question List';
  }
}

class NavigateToCreatePinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Create Pin';
  }
}

class NavigateToEnterPinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Enter Pin';
  }
}

class NavigateToBiometricAuthAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Biometric Auth Action';
  }
}

class NavigateToRootedDeviceAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Rooted Device';
  }
}

class NavigateToNoteDetailAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Note Detail';
  }
}

class NavigateToEditQuestionListAction implements ILoggingAction {
  final String? questionListId;
  final String text;
  final List<QuestionDto> questions;
  final int orderRank;

  const NavigateToEditQuestionListAction({required this.questionListId, required this.text, required this.questions, required this.orderRank});

  @override
  String toLogString() {
    return 'Navigate to Question List Detail';
  }
}

class NavigateToNewNoteAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to New Note';
  }
}

class NavigateToNewQuestionListAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to New Question List';
  }
}

class NavigateToMaintenanceMode implements ILoggingAction {
  @override
  String toLogString() => 'Navigate to Maintenance mode';
}

class NavigateToInformationAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Information Action';
  }
}

class NavigateToOnboardingAction implements ILoggingAction {
  @override
  String toLogString() => 'Navigate to Onboarding';
}

class NavigateToTagAction implements ILoggingAction {
  final String tag;

  const NavigateToTagAction({required this.tag});

  @override
  String toLogString() {
    return 'Navigate to Tag Action';
  }
}

class NavigateToSettingsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate to Settings';
  }
}

class NavigateToLanguageSelectionAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Language Selection Action';
  }
}

class NavigateToThemeModeAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Theme Mode Action';
  }
}

class NavigateToTagsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Tags Action';
  }
}

class NavigateToReviewAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Review Action';
  }
}

class NavigateToNewNotebookAction implements ILoggingAction {
  NavigateToNewNotebookAction();

  @override
  String toLogString() {
    return 'Navigate To New Notebook Action';
  }
}

class NavigateToNewTagAction implements ILoggingAction {
  NavigateToNewTagAction();

  @override
  String toLogString() {
    return 'Navigate To New Tag Action';
  }
}

class NavigateToEditNotebookAction implements ILoggingAction {
  final String notebookId;

  NavigateToEditNotebookAction({required this.notebookId});

  @override
  String toLogString() {
    return 'Navigate To Edit Notebook Action';
  }
}

class NavigateToNoteOptionsAction implements ILoggingAction {
  NavigateToNoteOptionsAction();

  @override
  String toLogString() {
    return 'Navigate To Note Options Action';
  }
}

class NavigateToSelectNotebookAction implements ILoggingAction {
  NavigateToSelectNotebookAction();

  @override
  String toLogString() {
    return 'Navigate To Select Notebook Action';
  }
}

class NavigateToNoteImageGalleryAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Select Notebook Action';
  }
}

class NavigateToSortNotebooksAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Sort Notebooks Action';
  }
}

class NavigateToShowInReviewAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Show In Review Action';
  }
}

class NavigateToSelectPeriodReviewAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Select Period Action';
  }
}

class NavigateToNotebookSortingOrderAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Sorting Order In Notebook Action';
  }
}

class NavigateToPasscodeAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Passcode Action';
  }
}

class NavigateToPasscodeAfterTimeAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Passcode After Time Action';
  }
}

class NavigateToSyncAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Sync Action';
  }
}

class NavigateToAccountAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Account Action';
  }
}

class NavigateToEncryptionAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Encryption Action';
  }
}

class NavigateToSelectTagsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Navigate To Select Tags Action';
  }
}
