class BackendNotAvailableException implements Exception {
  BackendNotAvailableException([this.message]);
  final String? message;

  @override
  String toString() => message != null
      ? 'BackendNotAvailableException: $message'
      : 'BackendNotAvailableException';
}
