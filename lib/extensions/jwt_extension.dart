import 'dart:convert';

extension JwtExtension on String {
  String getUserId() {
    final tokenParams = parseJwtPayLoad();
    return tokenParams['unique_name'];
  }

  Map<String, dynamic> parseJwtPayLoad() {
    final parts = split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }
    final payload = parts[1].decodeBase64();
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }
    return payloadMap;
  }

  String decodeBase64() {
    String output = replaceAll('-', '+').replaceAll('_', '/');
    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }
    return utf8.decode(base64Url.decode(output));
  }
}
