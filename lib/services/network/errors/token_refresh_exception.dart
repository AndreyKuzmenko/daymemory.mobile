class TokenRefreshException implements Exception {
  TokenRefreshException({required this.message});

  final String message;

  @override
  String toString() {
    return "TokenRefreshException, message: $message";
  }
}
