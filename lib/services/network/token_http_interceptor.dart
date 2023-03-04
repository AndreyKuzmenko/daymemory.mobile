import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:http_interceptor/http_interceptor.dart';

class TokenHttpInterceptor implements InterceptorContract {
  final ISettingsService settingsService;

  final String apiUrl;

  TokenHttpInterceptor({required this.apiUrl, required this.settingsService});

  @override
  Future<bool> shouldInterceptResponse() async => false;

  @override
  Future<bool> shouldInterceptRequest() async => true;

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    request.headers["Accept"] = "application/json";
    request.headers["Content-type"] = "application/json";
    var settings = await settingsService.getSettings();
    final token = settings.accessToken;
    if (token != null && token.isNotEmpty) {
      request.headers["Authorization"] = 'Bearer $token';
    }

    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) async {
    return response;
  }
}
