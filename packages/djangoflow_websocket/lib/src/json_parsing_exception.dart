/// Exception class to catch json parsing errors
class JsonParsingException implements Exception {
  JsonParsingException(this.stackTrace);
  final String? stackTrace;
}
