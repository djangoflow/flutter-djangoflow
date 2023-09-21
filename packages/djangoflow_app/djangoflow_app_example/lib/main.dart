import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_example/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'utils/app_exception.dart';

void main() {
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      final errorMessage = switch (exception) {
        AppException e => e.message,
        _ => 'An error occurred',
      };
      DjangoflowAppSnackbar.showError(errorMessage);
    },
    rootWidgetBuilder: (builder) => builder(
      AppBuilder(
        providers: [
          BlocProvider<AppCubit>(create: (context) => AppCubit.instance),
        ],
        builder: (context) => const App(),
      ),
    ),
  );
}
