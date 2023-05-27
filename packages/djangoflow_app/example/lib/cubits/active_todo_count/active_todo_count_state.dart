part of 'active_todo_count_cubit.dart';

class ActiveTodoCountState extends Equatable {
  final int activeTodoCount;

  const ActiveTodoCountState({
    required this.activeTodoCount,
  });

  @override
  List<Object> get props => [activeTodoCount];

  ActiveTodoCountState copyWith({
    int? activeTodoCount,
  }) {
    return ActiveTodoCountState(
      activeTodoCount: activeTodoCount ?? this.activeTodoCount,
    );
  }

  @override
  String toString() => 'ActiveTodoCount(activeTodoCount: $activeTodoCount)';

  Map<String, dynamic> toMap() {
    return {
      'activeTodoCount': activeTodoCount,
    };
  }

  factory ActiveTodoCountState.fromMap(Map<String, dynamic> map) {
    return ActiveTodoCountState(
      activeTodoCount: map['activeTodoCount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActiveTodoCountState.fromJson(String source) =>
      ActiveTodoCountState.fromMap(json.decode(source));
}
