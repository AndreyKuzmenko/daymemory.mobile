import 'dart:convert';
import 'dart:core';
import 'package:daymemory/services/network/errors/bad_request_exception.dart';
import 'package:daymemory/services/network/errors/inner_error_dto.dart';
import 'package:daymemory/services/network/network_base_service.dart';

class SigninResult {
  final String id;
  final String accessToken;
  final String refreshToken;
  final String email;
  final String firstName;
  final String lastName;
  final bool isEncryptionEnabled;
  final String? encryptedText;

  SigninResult({
    required this.id,
    required this.accessToken,
    required this.refreshToken,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.isEncryptionEnabled,
    required this.encryptedText,
  });

  factory SigninResult.fromJson(Map<String, dynamic> json) {
    return SigninResult(
      id: json['id'],
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      isEncryptionEnabled: json['isEncryptionEnabled'],
      encryptedText: json['encryptedText'],
    );
  }
}

class TokenRefreshResult {
  final String accessToken;
  final String refreshToken;

  TokenRefreshResult({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokenRefreshResult.fromJson(Map<String, dynamic> json) {
    return TokenRefreshResult(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );
  }
}

abstract class INetworkUserService {
  Future<SigninResult> signUpSocial(String? id, String? email, String? firstName, String? lastName, String? imageUrl, String providerType);

  Future<SigninResult> signUp(String email, String firstName, String lastName, String password);

  Future<SigninResult> login(String email, String password);

  Future<bool> checkEmail(String email);

  Future<bool> forgotPassword(String email);

  Future<bool> enableEncryption(String encryptedText);

  Future<SigninResult> restorePassword(String email, String password, String token);
}

class NetworkUserService extends NetworkBaseService implements INetworkUserService {
  NetworkUserService({required super.apiUrl, required super.settingsService}) : super();

  NetworkUserService init() {
    return this;
  }

  @override
  Future<SigninResult> login(String email, String password) async {
    var jsonString = json.encode({
      "Email": email,
      "Password": password,
    });

    final response = await client
        .post(
          Uri.https(apiUrl, 'api/account/login'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      var result = SigninResult.fromJson(parsed);
      return result;
    } else {
      throw Exception('Failed to log in. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<SigninResult> signUpSocial(String? id, String? email, String? firstName, String? lastName, String? imageUrl, String providerType) async {
    var jsonString = json.encode({
      "Id": id,
      "Email": email,
      "FirstName": firstName,
      "LastName": lastName,
      "imageUrl": imageUrl,
      "ProviderType": providerType,
    });

    final response = await client
        .post(
          Uri.https(apiUrl, 'api/account/signup/social'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      var result = SigninResult.fromJson(parsed);
      return result;
    } else {
      throw Exception('Failed to sign up via social network. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<SigninResult> signUp(String email, String firstName, String lastName, String password) async {
    var jsonString = json.encode({
      "Email": email,
      "FirstName": firstName,
      "LastName": lastName,
      "Password": password,
    });

    final response = await client
        .post(
          Uri.https(apiUrl, 'api/account/signup'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      var result = SigninResult.fromJson(parsed);
      return result;
    } else {
      throw Exception('Failed to sign up. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<SigninResult> restorePassword(String email, String password, String token) async {
    var jsonString = json.encode({
      "Email": email,
      "Token": token,
      "Password": password,
    });

    final response = await client
        .post(
          Uri.https(apiUrl, 'api/account/restore-password'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      var result = SigninResult.fromJson(parsed);
      return result;
    } else {
      throw Exception('Failed to restore password. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<bool> forgotPassword(String email) async {
    var jsonString = json.encode({"Email": email});

    final response = await client
        .post(
          Uri.https(apiUrl, 'api/account/forgot-password'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 400) {
      throw BadRequestException(innerError: InnerErrorDto.fromJson(json.decode(response.body)));
    } else {
      throw Exception('Forgot password failed. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<bool> enableEncryption(String encryptedText) async {
    var jsonString = json.encode({"encryptedText": encryptedText});
    final response = await client
        .post(
          Uri.https(apiUrl, 'api/account/enable-encryption'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Failed to enable encryption. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<bool> checkEmail(String email) async {
    var jsonString = json.encode({"Email": email});
    final response = await client.post(Uri.https(apiUrl, 'api/account/emailcheck'), body: jsonString).timeout(const Duration(seconds: 10));
    return response.statusCode == 200;
  }
}
