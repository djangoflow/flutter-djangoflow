import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class BlocExceptionObserver extends BlocObserver {
  final Function(Object exception, StackTrace? stackTrace) onException;

  BlocExceptionObserver({required this.onException}) : super();

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      debugPrint(transition.toString());
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      debugPrint('${bloc.runtimeType}');
      // Temporarily Commenting to stop noisy output
      // debugPrint('${bloc.runtimeType} $change');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('>>> ${bloc.runtimeType} $error, $stackTrace');

    onException(error, stackTrace);

    if (!kDebugMode) {
      Sentry.captureException(error, stackTrace: stackTrace);
    }
    super.onError(bloc, error, stackTrace);
  }
}
