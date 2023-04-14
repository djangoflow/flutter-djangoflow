import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitListener extends BlocListener<AppCubit, AppState> {
  AppCubitListener({
    super.key,
    super.child,
    required super.listener,
    BlocListenerCondition<AppState>? listenWhen,
  }) : super(
          bloc: AppCubit.instance,
          listenWhen: listenWhen ?? (prev, current) => prev != current,
        );
}
