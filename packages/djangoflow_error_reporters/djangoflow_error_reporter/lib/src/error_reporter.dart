import 'package:djangoflow_error_reporter/src/models/error_reporter_base.dart';

class DjangoflowErrorReporter extends ErrorReporterBase {
  final _errorReporters = <ErrorReporterBase>[];

  void addAll(List<ErrorReporterBase> errorReporters) {
    _errorReporters.addAll(errorReporters);
  }

  @override
  Future<void> initialize(String? env) async {
    for (var errorReporter in _errorReporters) {
      errorReporter.initialize(env);
    }
  }

  @override
  Future<void> report(Object exception, StackTrace? stackTrace) async {
    for (var errorReporter in _errorReporters) {
      errorReporter.report(exception, stackTrace);
    }
  }

  @override
  Future<void> updateUserInformation(String? id, String email) async {
    for (var errorReporter in _errorReporters) {
      errorReporter.updateUserInformation(id, email);
    }
  }
}
