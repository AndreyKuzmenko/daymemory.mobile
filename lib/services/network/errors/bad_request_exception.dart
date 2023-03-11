import 'package:daymemory/services/network/errors/inner_error_dto.dart';

class BadRequestException implements Exception {
  BadRequestException({required this.innerError});

  final InnerErrorDto innerError;
}
