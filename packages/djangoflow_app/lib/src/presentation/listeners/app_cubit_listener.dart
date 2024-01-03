import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitListener extends BlocListener<AppCubit, AppState> {
  AppCubitListener({
    required super.listener,
    super.key,
    super.child,
    BlocListenerCondition<AppState>? listenWhen,
  }) : super(
          listenWhen: listenWhen ?? (prev, current) => prev != current,
        );
}
