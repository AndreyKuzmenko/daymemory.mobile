class DecryptionKeyAbsentException implements Exception {
  DecryptionKeyAbsentException({required this.message});

  final String message;

  @override
  String toString() {
    return "DecryptionException, message: $message";
  }
}
