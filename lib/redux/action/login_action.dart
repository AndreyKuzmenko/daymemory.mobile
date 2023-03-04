import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/services/auth_service/auth_result.dart';

class LoginIsLoadingAction implements ILoggingAction {
  final bool isSending;
  const LoginIsLoadingAction({required this.isSending});

  @override
  String toLogString() {
    return 'Login Is Loading Action';
  }
}

class LoginWithFacebookIdAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Login With Facebook Id Action';
  }
}

class LoginWithGoogleIdAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Login With Google Id Action';
  }
}

class LoginWithAppleIdAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Login With Apple Id Action';
  }
}

class LoginWithEmailAction implements ILoggingAction {
  final String email;

  final String password;

  LoginWithEmailAction({required this.email, required this.password});

  @override
  String toLogString() {
    return 'Login With Email Action';
  }
}

class ForgotPasswordAction implements ILoggingAction {
  final String email;

  ForgotPasswordAction({required this.email});

  @override
  String toLogString() {
    return 'Forgot Password Action';
  }
}

class RestorePasswordAction implements ILoggingAction {
  final String email;

  final String password;

  final String code;

  RestorePasswordAction({required this.email, required this.code, required this.password});

  @override
  String toLogString() {
    return 'Forgot Password Action';
  }
}

class SignupWithEmailAction implements ILoggingAction {
  final String email;

  final String password;

  final String firstName;

  final String lastName;

  SignupWithEmailAction({required this.email, required this.password, required this.firstName, required this.lastName});

  @override
  String toLogString() {
    return 'Signup With Email Action';
  }
}

class LoginAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Login Action';
  }
}

class SignupThirdPartyAction implements ILoggingAction {
  final AuthResult authResult;

  SignupThirdPartyAction(this.authResult);

  @override
  String toLogString() {
    return 'Login Third Party Finished Action';
  }
}

class LogoutAction implements ILoggingAction {
  LogoutAction();

  @override
  String toLogString() {
    return 'Logout Action';
  }
}
