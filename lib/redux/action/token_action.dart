import 'package:daymemory/services/network/network_user_service.dart';

import 'common_action.dart';

class TokenExtractAction implements ILoggingAction {
  final dynamic nextAction;

  TokenExtractAction(this.nextAction);

  @override
  String toLogString() {
    return 'Extract token from secure storage';
  }
}

class TokenRefreshingAction implements ILoggingAction {
  final SigninResult signinResult;
  final dynamic nextAction;

  TokenRefreshingAction(
    this.signinResult,
    this.nextAction,
  );

  @override
  String toLogString() {
    return 'Token Refreshing Action';
  }
}
