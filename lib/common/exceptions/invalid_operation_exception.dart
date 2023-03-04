class InvalidOperationException implements Exception {
  InvalidOperationException({required this.message});

  final String message;

  @override
  String toString() {
    return "InvalidOperationException, message: $message";
  }
}
