import 'package:local_auth/local_auth.dart';

abstract class ILocalAuthService {
  Future<bool> get canAuthenticateWithBiometrics;

  Future<bool> get isDeviceSupported;

  Future<bool> authenticate(String reason);
}

class LocalAuthService implements ILocalAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  @override
  Future<bool> get canAuthenticateWithBiometrics async => await _localAuth.isDeviceSupported() && await _localAuth.canCheckBiometrics && (await _localAuth.getAvailableBiometrics()).isNotEmpty;

  @override
  Future<bool> get isDeviceSupported => _localAuth.isDeviceSupported();

  @override
  Future<bool> authenticate(String reason) async => _localAuth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(biometricOnly: true),
      );
}
