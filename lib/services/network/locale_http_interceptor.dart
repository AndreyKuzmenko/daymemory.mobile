import 'package:http_interceptor/http_interceptor.dart';

class LocaleHttpInterceptor implements InterceptorContract {
  @override
  Future<bool> shouldInterceptResponse() async => true;

  @override
  Future<bool> shouldInterceptRequest() async => true;

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    //data.headers["Accept-Language"] = SettingsManager.getCurrentLocale().toLanguageTag();
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) async {
    return response;
  }
}
