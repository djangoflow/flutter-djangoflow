// Resolves: https://github.com/felangel/bloc/issues/3069
import 'package:flutter_bloc/flutter_bloc.dart';

/// A mixin which enforces that `emit` can only be called safely(when bloc is not closed).
mixin SafeEmitMixin<S> on Cubit<S> {
  @override
  void emit(state) {
    if (isClosed) {
      return;
    }
    super.emit(state);
  }
}
