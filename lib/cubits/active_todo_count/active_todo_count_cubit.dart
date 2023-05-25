import 'dart:async';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../todo_list/todo_list_cubit.dart';

part 'active_todo_count_state.dart';

class ActiveTodoCountCubit extends Cubit<ActiveTodoCountState>
    with HydratedMixin {
  late final StreamSubscription todoListSubscription;
  final TodoListCubit todoListCubit;
  final int initialActiveTodoCount;

  ActiveTodoCountCubit({
    required this.todoListCubit,
    required this.initialActiveTodoCount,
  }) : super(ActiveTodoCountState(activeTodoCount: initialActiveTodoCount)) {
    todoListSubscription =
        todoListCubit.stream.listen((TodoListState todoListState) {
      emit(ActiveTodoCountState(
        activeTodoCount:
            todoListState.todos.where((todo) => !todo.completed).length,
      ));
    });
  }

  @override
  Future<void> close() {
    todoListSubscription.cancel();
    return super.close();
  }

  @override
  ActiveTodoCountState? fromJson(Map<String, dynamic> json) {
    return ActiveTodoCountState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ActiveTodoCountState state) {
    return state.toMap();
  }
}
