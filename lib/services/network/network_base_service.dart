import 'dart:core';
import 'package:daymemory/services/network/token_http_interceptor.dart';
import 'package:daymemory/services/network/token_http_retry_policy.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/network/locale_http_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';

abstract class NetworkBaseService {
  final String apiUrl;

  final ISettingsService settingsService;

  late Client client;

  NetworkBaseService({required this.apiUrl, required this.settingsService}) {
    client = InterceptedClient.build(
        interceptors: [
          LocaleHttpInterceptor(),
          TokenHttpInterceptor(
            apiUrl: apiUrl,
            settingsService: settingsService,
          ),
        ],
        retryPolicy: ExpiredTokenRetryPolicy(
          apiUrl: apiUrl,
          settingsService: settingsService,
        ));
  }
}
