/// Base `ErrorReporter` class that provides blueprints for
/// basic error handling functionality
abstract class ErrorReporter {
  Future<void> initialize(String? env, String? release);
  Future<void> updateUserInformation(String? id, String? email, String? name);
  Future<void> report(Object exception, StackTrace? stackTrace);
}
