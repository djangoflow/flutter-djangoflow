import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitBuilder extends BlocBuilder<AppCubit, AppState> {
  AppCubitBuilder({
    required super.builder, super.key,
    BlocBuilderCondition<AppState>? buildWhen,
  }) : super(
          buildWhen: buildWhen ?? (previous, current) => previous != current,
        );
}
