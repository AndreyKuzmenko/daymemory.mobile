class SyncStoppedException implements Exception {
  SyncStoppedException({required this.message});

  final String message;

  @override
  String toString() {
    return "SyncStoppedException, message: $message";
  }
}
