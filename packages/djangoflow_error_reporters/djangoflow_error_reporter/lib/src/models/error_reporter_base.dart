abstract class ErrorReporterBase {
  Future<void> initialize(String? env);
  Future<void> updateUserInformation(String? id, String email);
  Future<void> report(Object exception, StackTrace? stackTrace);
}
