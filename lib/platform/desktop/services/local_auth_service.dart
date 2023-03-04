import 'package:daymemory/services/local_auth_service/local_auth_service.dart';
import 'package:local_auth/local_auth.dart';

class DesktopLocalAuthService implements ILocalAuthService {
  @override
  Future<bool> get canCheckBiometrics => Future(() => false);

  @override
  Future<bool> get isDeviceSupported => Future(() => false);

  @override
  Future<bool> authenticate(String reason) async {
    return Future(() => false);
  }

  @override
  Future<List<BiometricType>> get biometrics => Future(() => []);
}
