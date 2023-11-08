import 'package:daymemory/services/local_auth_service/local_auth_service.dart';

class DesktopLocalAuthService implements ILocalAuthService {
  @override
  Future<bool> get canAuthenticateWithBiometrics => Future(() => false);

  @override
  Future<bool> get isDeviceSupported => Future(() => false);

  @override
  Future<bool> authenticate(String reason) async {
    return Future(() => false);
  }
}
