import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_example/app_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../configs/AppStrings.dart';
import '../../cubits/active_todo_count/active_todo_count_cubit.dart';

class TodoHeader extends StatefulWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  State<TodoHeader> createState() => _TodoHeaderState();
}

class _TodoHeaderState extends State<TodoHeader> {
  // bool isSwitched = false;
  bool isEN = false;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
        flex: 1,
        child: Text(
          '${context.watch<ActiveTodoCountCubit>().state.activeTodoCount} ${AppStrings.items_left.tr(context)}',
          style: const TextStyle(fontSize: 20.0, color: Colors.redAccent),
        ),
      ),
      Switch(
        onChanged: (value) {
          context.read<AppCubit>().toggleEnvironment();
          if (value) {
            DjangoflowAppSnackbar.showInAppNotification(
                title: "AppEnvironment", body: "AppEnvironment in Debug Mode");
          }
        },
        value: context.watch<AppCubit>().state.environment ==
            AppEnvironment.sandbox,
      ),
    ]);
  }
}
