import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/todo_model.dart';

part 'todo_filter_options_state.dart';

class TodoFilterOptionsCubit extends Cubit<TodoFilterOptionsState> {
  TodoFilterOptionsCubit() : super(TodoFilterOptionsState.initial());

  void changeFilter(Filter newFilter) {
    emit(state.copyWith(filter: newFilter));
  }
}
