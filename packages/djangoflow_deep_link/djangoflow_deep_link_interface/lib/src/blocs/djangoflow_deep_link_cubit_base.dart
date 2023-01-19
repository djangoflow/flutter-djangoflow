import 'dart:async';

import 'package:djangoflow_deep_link_interface/src/data/djangoflow_deep_link_repository_base.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class DjangoflowDeepLinkCubitBase<T> extends Cubit<T?> {
  DjangoflowDeepLinkCubitBase(super.initialState, this.repository) {
    _deepLinkStreamSub = repository.getLinkStream().listen((link) {
      emit(link);
    });
  }

  final DjangoflowDeepLinkRepositoryBase<T> repository;

  late final StreamSubscription<T> _deepLinkStreamSub;

  @override
  Future<void> close() {
    _deepLinkStreamSub.cancel();
    return super.close();
  }
}
