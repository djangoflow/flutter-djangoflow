import 'package:djangoflow_error_reporter/djangoflow_error_reporter.dart';
import 'package:flutter_test/flutter_test.dart';

class TestErrorReporter extends ErrorReporter {
  bool _initialized = false;
  Object? _reportedException;
  StackTrace? _reportedStackTrace;
  String? _reportedId;
  String? _reportedEmail;
  String? _reportedName;

  @override
  Future<void> initialize(String? env, String? release) async {
    _initialized = true;
  }

  @override
  Future<void> report(Object exception, StackTrace? stackTrace) async {
    _reportedException = exception;
    _reportedStackTrace = stackTrace;
  }

  @override
  Future<void> updateUserInformation(
      String? id, String? email, String? name) async {
    _reportedId = id;
    _reportedEmail = email;
    _reportedName = name;
  }
}

void main() {
  group('DjangoflowErrorReporter', () {
    test('should initialize error reporters', () async {
      final errorReporter = TestErrorReporter();
      final djangoflowErrorReporter = DjangoflowErrorReporter.instance;
      djangoflowErrorReporter.addAll([errorReporter]);
      await djangoflowErrorReporter.initialize('test', '1.0.0');
      expect(errorReporter._initialized, isTrue);
    });

    test('should report errors to error reporters', () async {
      final errorReporter = TestErrorReporter();
      final djangoflowErrorReporter = DjangoflowErrorReporter.instance;
      djangoflowErrorReporter.addAll([errorReporter]);
      final exception = Exception('test exception');
      await djangoflowErrorReporter.report(exception, null);
      expect(errorReporter._reportedException, exception);
    });

    test('should update user information for error reporters', () async {
      final errorReporter = TestErrorReporter();
      final djangoflowErrorReporter = DjangoflowErrorReporter.instance;
      djangoflowErrorReporter.addAll([errorReporter]);
      await djangoflowErrorReporter.updateUserInformation(
          '123', 'user@example.com', 'User');
      expect(errorReporter._reportedId, '123');
      expect(errorReporter._reportedEmail, 'user@example.com');
      expect(errorReporter._reportedName, 'User');
    });
  });
}
