import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_example/app_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../configs/AppStrings.dart';
import '../../cubits/todo_list/todo_list_cubit.dart';

class CreateTodo extends StatefulWidget {
  const CreateTodo({Key? key}) : super(key: key);

  @override
  State<CreateTodo> createState() => _CreateTodoState();
}

class _CreateTodoState extends State<CreateTodo> {
  final TextEditingController newTodoController = TextEditingController();

  @override
  void dispose() {
    newTodoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: newTodoController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.edit_note_sharp),
        labelText: AppStrings.What_to_do.tr(context),
      ),
      onSubmitted: (String? todoDesc) {
        if (todoDesc != null && todoDesc.trim().isNotEmpty) {
          context.read<TodoListCubit>().addTodo(todoDesc);
          newTodoController.clear();
          DjangoflowAppSnackbar.showInfo(
              '$todoDesc ${AppStrings.created_successfully.tr(context)}',
              duration: const Duration(
                seconds: 3,
              ));
        }
      },
    );
  }
}
