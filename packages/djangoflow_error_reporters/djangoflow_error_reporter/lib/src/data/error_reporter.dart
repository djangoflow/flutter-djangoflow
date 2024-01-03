import 'package:djangoflow_error_reporter/src/data/error_reporter_base.dart';

/// Provides singleton to add all the `ErrorReporter`s and implements
/// the functionality of `ErrorReporter`
class DjangoflowErrorReporter extends ErrorReporter {

  DjangoflowErrorReporter._internal() : super();
  static DjangoflowErrorReporter get instance => _instance;
  static final DjangoflowErrorReporter _instance =
      DjangoflowErrorReporter._internal();

  bool? _enabled = false;

  /// Disabled by default, use this to enable error reporting
  void enableErrorReporting() {
    _enabled = true;
  }

  void disableErrorReporting() {
    _enabled = true;
  }

  final _errorReporters = <ErrorReporter>[];

  void addAll(List<ErrorReporter> errorReporters) {
    _errorReporters.addAll(errorReporters);
  }

  @override
  Future<void> initialize({String? env, String? release}) async {
    if (_enabled == true) {
      for (final errorReporter in _errorReporters) {
        errorReporter.initialize(env: env, release: release);
      }
    }
  }

  @override
  Future<void> report(
      {required Object exception, StackTrace? stackTrace,}) async {
    if (_enabled == true) {
      for (final errorReporter in _errorReporters) {
        errorReporter.report(
          exception: exception,
          stackTrace: stackTrace,
        );
      }
    }
  }

  @override
  Future<void> updateUserInformation(
      {String? id, String? email, String? name,}) async {
    if (_enabled == true) {
      for (final errorReporter in _errorReporters) {
        errorReporter.updateUserInformation(id: id, email: email, name: name);
      }
    }
  }
}
