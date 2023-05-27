import 'dart:convert';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../models/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> with HydratedMixin {
  TodoListCubit() : super(TodoListState.initial());

  void loadDefaultTodos() {
    final todos = [
      Todo(
        id: '1',
        desc: 'Task 1',
      ),
      Todo(
        id: '2',
        desc: 'Task 2',
      ),
      Todo(
        id: '3',
        desc: 'Task 3',
      ),
      Todo(
        id: '4',
        desc: 'Task 4',
      ),
    ];
    emit(state.copyWith(todos: todos));
  }

  void addTodo(String todoDesc) {
    emit(state.copyWith(
      todos: [...state.todos, Todo(desc: todoDesc)],
    ));
  }

  void editTodo(String id, String todoDesc) {
    emit(state.copyWith(
      todos: state.todos.map((todo) {
        if (todo.id == id) {
          return todo.copyWith(
              id: id, desc: todoDesc, completed: todo.completed);
        }
        return todo;
      }).toList(),
    ));
    log('TodoListState: editTodo id $id, with description: $todoDesc');
  }

  void toggleTodo(String id) {
    emit(state.copyWith(
      todos: state.todos.map((todo) {
        if (todo.id == id) {
          return todo.copyWith(
              id: id, desc: todo.desc, completed: !todo.completed);
        }
        return todo;
      }).toList(),
    ));
    log('TodoListState: toggled todo id $id to ${state.todos.firstWhere((todo) => todo.id == id).completed}');
  }

  void removeTodo(Todo todo) {
    emit(state.copyWith(
      todos: state.todos.where((t) => t.id != todo.id).toList(),
    ));
    log('TodoListState: removed todo id ${todo.id}');
  }

  void removeCompletedTodos() {
    emit(state.copyWith(
      todos: state.todos.where((t) => !t.completed).toList(),
    ));
    log('TodoListState: todos left: ${state.todos.length}');
  }

  void removeAllTodos() {
    emit(state.copyWith(todos: []));
    log('TodoListState: removed all todos');
  }

  @override
  TodoListState? fromJson(Map<String, dynamic> json) {
    return TodoListState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(TodoListState state) {
    return state.toMap();
  }
}
