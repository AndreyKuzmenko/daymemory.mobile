class InvalidDecryptionKeyException implements Exception {
  InvalidDecryptionKeyException({required this.message});

  final String message;

  @override
  String toString() {
    return "InvalidDecryptionKeyException, message: $message";
  }
}
