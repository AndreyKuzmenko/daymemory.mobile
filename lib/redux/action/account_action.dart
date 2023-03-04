import 'common_action.dart';

class UserAuthChangedAction implements ILoggingAction {
  final bool isAuthenticated;

  UserAuthChangedAction({required this.isAuthenticated});

  @override
  String toLogString() {
    return 'User Auth Changed Action';
  }
}

class UserInfoLoadedAction implements ILoggingAction {
  final String email;

  final String firstName;

  final String lastName;

  final bool isEncryptionEnabled;

  final bool isAuthenticated;

  final String? encryptedText;

  UserInfoLoadedAction({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.isAuthenticated,
    required this.isEncryptionEnabled,
    required this.encryptedText,
  });

  @override
  String toLogString() {
    return 'User Info Loaded Action';
  }
}

class EnableAccountEncryptionAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Enable Account Encryption Action';
  }
}

class EncryptionEnabledAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Encryption Enabled Action';
  }
}

class SaveEncryptedEnabledAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Encryption Enabled Action';
  }
}
