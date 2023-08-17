import 'package:flutter_bloc/flutter_bloc.dart';

// Due to https://github.com/felangel/bloc/issues/3069
mixin CubitMaybeEmit<S> on Cubit<S> {
  @override
  void emit(state) {
    if (isClosed) {
      return;
    }
    super.emit(state);
  }
}
