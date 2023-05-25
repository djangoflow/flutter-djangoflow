part of 'todo_filter_options_cubit.dart';

class TodoFilterOptionsState extends Equatable {
  final Filter filter;

  const TodoFilterOptionsState({
    required this.filter,
  });

  factory TodoFilterOptionsState.initial() {
    return const TodoFilterOptionsState(
      filter: Filter.all,
    );
  }

  @override
  List<Object> get props => [filter];

  @override
  String toString() => 'TodoFilterState(filter: $filter)';

  TodoFilterOptionsState copyWith({
    Filter? filter,
  }) {
    return TodoFilterOptionsState(
      filter: filter ?? this.filter,
    );
  }
}
