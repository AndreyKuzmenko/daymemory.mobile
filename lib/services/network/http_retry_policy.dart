import 'dart:async';
import 'dart:convert';
import 'package:daymemory/services/network/errors/token_refresh_exception.dart';
import 'package:daymemory/services/network/network_user_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:http/http.dart' as http;

class ExpiredTokenRetryPolicy extends RetryPolicy {
  final ISettingsService settingsService;

  final String apiUrl;

  ExpiredTokenRetryPolicy({required this.apiUrl, required this.settingsService});

  @override
  int get maxRetryAttempts => 2;

  @override
  Future<bool> shouldAttemptRetryOnResponse(BaseResponse response) async {
    if (response.statusCode == 401) {
      final isTokenExpired = response.headers["IS-TOKEN-EXPIRED".toLowerCase()];
      if (isTokenExpired != null && isTokenExpired == "true") {
        await _refreshToken();
        return true;
      }
    }

    return false;
  }

  Future _refreshToken() async {
    var settings = await settingsService.getSettings();
    var jsonString = json.encode({
      "AccessToken": settings.accessToken,
      "RefreshToken": settings.refreshToken,
    });

    var headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await http
        .post(
          Uri.https(apiUrl, 'api/account/token/refresh'),
          body: jsonString,
          headers: headers,
        )
        .timeout(const Duration(seconds: 30));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      var result = TokenRefreshResult.fromJson(parsed);

      var settings = await settingsService.getSettings();
      settings.accessToken = result.accessToken;
      settings.refreshToken = result.refreshToken;
      await settingsService.setSettings(settings);
    } else {
      throw TokenRefreshException(message: "Can't refresh token.");
    }
  }
}


/*
    const r = RetryOptions(maxAttempts: 3);
    final response = await r.retry(
      () => http
          .post(
            Uri.https(apiUrl, 'api/account/token/refresh'),
            body: jsonString,
            headers: headers,
          )
          .timeout(const Duration(seconds: 10)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );
 */