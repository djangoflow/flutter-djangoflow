/// Exception class to catch json parsing errors
class JsonParsingException implements Exception {
  final String? stackTrace;
  JsonParsingException(this.stackTrace);
}
