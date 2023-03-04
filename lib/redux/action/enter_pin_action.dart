import 'common_action.dart';

class CharEnteredPinAction implements ILoggingAction {
  final String char;

  CharEnteredPinAction({required this.char});

  @override
  String toLogString() {
    return 'Type Entered Pin Action';
  }
}

class ClearEnteredPinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Clear Entered Pin Action';
  }
}

class ClearAllTypingEnterPinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Clear All Entered Pin Action';
  }
}

class RetryTypingEnterPinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Retry Typing Entered Pin Action';
  }
}

class MatchPinAction implements ILoggingAction {
  final String pinCode;

  MatchPinAction({required this.pinCode});

  @override
  String toLogString() {
    return 'Match Pin Action';
  }
}

class ResetEnterPinAttempsAction implements ILoggingAction {
  ResetEnterPinAttempsAction();

  @override
  String toLogString() {
    return 'Reset Enter Pin Action';
  }
}
