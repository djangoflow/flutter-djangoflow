import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_example/app_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../configs/AppStrings.dart';
import '../../cubits/filtered_todo/filtered_todo_cubit.dart';
import '../../cubits/todo_list/todo_list_cubit.dart';
import '../../models/todo_model.dart';

class ShowTodo extends StatefulWidget {
  const ShowTodo({Key? key}) : super(key: key);

  @override
  State<ShowTodo> createState() => _ShowTodoState();
}

class _ShowTodoState extends State<ShowTodo> {
  @override
  Widget build(BuildContext context) {
    final todos = context.watch<FilteredTodoCubit>().state.filteredTodos;

    return Scrollbar(
      thickness: 5.0,
      child: ListView.builder(
          physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          primary: true,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: ValueKey(todos[index].id),
              background: showBackground(0),
              secondaryBackground: showBackground(1),
              child: TodoItem(
                todo: todos[index],
              ),
              confirmDismiss: (_) {
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(AppStrings.are_you_sure.tr(context)),
                        content: Text(AppStrings.do_you_really_want_to_delete
                            .tr(context)),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text(AppStrings.NO.tr(context))),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                                DjangoflowAppSnackbar.showInfo(
                                    '${AppStrings.deleted_successfully.tr(context)} ${todos[index].desc}!',
                                    duration: const Duration(
                                      milliseconds: 1800,
                                    ));
                              },
                              child: Text(AppStrings.YES.tr(context))),
                        ],
                      );
                    });
              },
              onDismissed: (_) {
                context.read<TodoListCubit>().removeTodo(todos[index]);
              },
            );
          },
          itemCount: todos.length),
    );
  }

  Widget showBackground(int direction) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      color: direction == 0 ? Colors.red : const Color.fromARGB(255, 168, 9, 9),
      alignment: direction == 0 ? Alignment.centerLeft : Alignment.centerRight,
      child: const Icon(
        Icons.delete,
        size: 30.0,
        color: Colors.white,
      ),
    );
  }
}

class TodoItem extends StatefulWidget {
  final Todo todo;

  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  late final TextEditingController textController;
  Filter? filter;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              bool _error = false;
              textController.text = widget.todo.desc;
              String? errorMessage;
              return StatefulBuilder(
                  builder: (BuildContext context, StateSetter stateSetter) {
                return AlertDialog(
                  title: Text(AppStrings.edit_todo.tr(context)),
                  content: TextField(
                    controller: textController,
                    autofocus: true,
                    decoration: InputDecoration(
                      errorText: _error ? errorMessage! : null,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(AppStrings.cancel.tr(context)),
                    ),
                    TextButton(
                      onPressed: () {
                        if (textController.text.trim().isEmpty ||
                            textController.text.trim() == widget.todo.desc) {
                          stateSetter(() {
                            _error = true;
                            errorMessage = textController.text.trim().isEmpty
                                ? AppStrings.please_input_the_description
                                    .tr(context)
                                : AppStrings.same_description_is_already_exist
                                    .tr(context);
                          });
                        } else {
                          stateSetter(() {
                            _error = false;
                          });
                        }
                        if (!_error) {
                          context
                              .read<TodoListCubit>()
                              .editTodo(widget.todo.id, textController.text);
                          Navigator.of(context).pop();
                          DjangoflowAppSnackbar.showInfo(
                              '${AppStrings.todo_edited_successfully_to.tr(context)} ${textController.text}',
                              duration: const Duration(
                                milliseconds: 1800,
                              ));
                        }
                      },
                      child: Text(AppStrings.edit.tr(context)),
                    ),
                  ],
                );
              });
            });
      },
      leading: Checkbox(
          value: widget.todo.completed,
          onChanged: (bool? checked) {
            context.read<TodoListCubit>().toggleTodo(widget.todo.id);
          }),
      title: Text(widget.todo.desc),
    );
  }
}
