import 'common_action.dart';

class TypePinAction implements ILoggingAction {
  final String char;

  TypePinAction({required this.char});

  @override
  String toLogString() {
    return 'Type Pin Action';
  }
}

class ClearPinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Clear Pin Action';
  }
}

class RetryConfirmPinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Clear All Confirm Pin Action';
  }
}

class ClearAllPinsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Clear All Pins Action';
  }
}

class SavingPinAction implements ILoggingAction {
  final String pinCode;

  SavingPinAction({required this.pinCode});

  @override
  String toLogString() {
    return 'Saving Pin Action';
  }
}

class RemovePinAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Remove Pin Action';
  }
}
