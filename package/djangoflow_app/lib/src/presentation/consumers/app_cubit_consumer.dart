import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitConsumer extends BlocConsumer<AppCubit, AppState> {
  AppCubitConsumer({
    super.key,
    BlocBuilderCondition? buildWhen,
    BlocListenerCondition? listenWhen,
    required super.builder,
    required super.listener,
  }) : super(
          buildWhen: buildWhen ?? (previous, current) => previous != current,
          listenWhen: listenWhen ?? (previous, current) => previous != current,
        );
}
