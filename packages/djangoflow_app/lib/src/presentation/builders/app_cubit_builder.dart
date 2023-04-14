import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitBuilder extends BlocBuilder<AppCubit, AppState> {
  AppCubitBuilder({
    super.key,
    required super.builder,
    BlocBuilderCondition<AppState>? buildWhen,
  }) : super(
          bloc: AppCubit.instance,
          buildWhen: buildWhen ?? (previous, current) => previous != current,
        );
}
