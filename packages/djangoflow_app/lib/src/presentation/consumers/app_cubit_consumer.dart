import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitConsumer extends BlocConsumer<AppCubit, AppState> {
  AppCubitConsumer({
    required super.builder, required super.listener, super.key,
    BlocBuilderCondition<AppState>? buildWhen,
    BlocListenerCondition<AppState>? listenWhen,
  }) : super(
          buildWhen: buildWhen ?? (previous, current) => previous != current,
          listenWhen: listenWhen ?? (previous, current) => previous != current,
        );
}
