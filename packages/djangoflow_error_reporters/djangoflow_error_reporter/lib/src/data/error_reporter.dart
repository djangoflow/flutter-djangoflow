import 'error_reporter_base.dart';

/// Provides singleton to add all the `ErrorReporter`s and implements
/// the functionality of `ErrorReporter`
class DjangoflowErrorReporter extends ErrorReporter {
  static DjangoflowErrorReporter get instance => _instance;
  static final DjangoflowErrorReporter _instance =
      DjangoflowErrorReporter._internal();

  DjangoflowErrorReporter._internal() : super();

  final _errorReporters = <ErrorReporter>[];

  void addAll(List<ErrorReporter> errorReporters) {
    _errorReporters.addAll(errorReporters);
  }

  @override
  Future<void> initialize(String? env, String? release) async {
    for (final errorReporter in _errorReporters) {
      errorReporter.initialize(env, release);
    }
  }

  @override
  Future<void> report(Object exception, StackTrace? stackTrace) async {
    for (final errorReporter in _errorReporters) {
      errorReporter.report(exception, stackTrace);
    }
  }

  @override
  Future<void> updateUserInformation(
      String? id, String? email, String? name) async {
    for (final errorReporter in _errorReporters) {
      errorReporter.updateUserInformation(id, email, name);
    }
  }
}
