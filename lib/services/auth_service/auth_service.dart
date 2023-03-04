import 'dart:convert';
import 'dart:math';
import 'package:daymemory/services/auth_service/auth_result.dart';
import 'package:daymemory/services/auth_service/auth_user_data.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
// ignore: depend_on_referenced_packages
import 'package:crypto/crypto.dart';

abstract class IAuthService {
  Future<AuthResult> signInWitFacebook();

  Future<AuthResult> signInWithGoogle();

  Future<AuthResult> signInWithApple();
}

class AuthService implements IAuthService {
  final ILoggingService loggingService;

  AuthService({required this.loggingService});

  @override
  Future<AuthResult> signInWitFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login(
      permissions: ['public_profile', 'email'],
    );
    if (result.status != LoginStatus.success) {
      return AuthResult(isSuccessfull: false, provider: "Facebook");
    }

    final userData = await FacebookAuth.i.getUserData(
      fields: "first_name,last_name,email,picture.width(200)",
    );

    var firstName = userData["first_name"];
    var lastName = userData["last_name"];
    var id = userData["id"];
    var email = userData["email"];
    var imageUrl = "";

    try {
      var picture = userData["picture"] as Map;
      imageUrl = picture["data"]["url"];
    } on Exception catch (e) {
      loggingService.logError(e);
    }

    return AuthResult(
        isSuccessfull: true,
        provider: "Facebook",
        userData: AuthUserData(
          id: id,
          email: email,
          firstName: firstName,
          lastName: lastName,
          imageUrl: imageUrl,
        ));
  }

  @override
  Future<AuthResult> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: <String>["email", "https://www.googleapis.com/auth/userinfo.profile"]).signIn();

    if (googleUser == null) {
      throw Exception("Google user is null");
    }

    return AuthResult(
        isSuccessfull: true,
        provider: "Google",
        userData: AuthUserData(
          id: googleUser.id,
          email: googleUser.email,
          firstName: googleUser.displayName,
          lastName: "",
          imageUrl: googleUser.photoUrl,
        ));
  }

  @override
  Future<AuthResult> signInWithApple() async {
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    var res = AuthResult(
        isSuccessfull: true,
        provider: "Apple Id",
        userData: AuthUserData(
          id: appleCredential.userIdentifier!,
          email: appleCredential.email ?? "",
          firstName: appleCredential.givenName ?? "No name",
          lastName: appleCredential.familyName ?? "No last name",
        ));

    return res;
  }

  String generateNonce([int length = 32]) {
    const charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
