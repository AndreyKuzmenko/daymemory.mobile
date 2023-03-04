import 'package:daymemory/services/auth_service/auth_user_data.dart';

class AuthResult {
  bool isSuccessfull;

  String? error;

  AuthUserData? userData;

  String provider;

  AuthResult({required this.isSuccessfull, required this.provider, this.error, this.userData});
}
