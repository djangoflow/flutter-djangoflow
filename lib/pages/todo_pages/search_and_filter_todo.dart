import 'dart:developer';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_example/app_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../configs/AppStrings.dart';
import '../../cubits/todo_filter_options/todo_filter_options_cubit.dart';
import '../../cubits/todo_search/todo_search_cubit.dart';
import '../../models/todo_model.dart';
import '../../utils/debounce.dart';

class SearchAndFilterTodo extends StatelessWidget {
  SearchAndFilterTodo({Key? key}) : super(key: key);
  final debounce = Debounce(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: AppStrings.search_todos.tr(context),
            border: InputBorder.none,
            filled: true,
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (String? newSearchTerm) {
            if (newSearchTerm != null) {
              debounce.run(() {
                context.read<TodoSearchCubit>().setSearchTerm(newSearchTerm);
              });
              log(newSearchTerm.toString());
            }
          },
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            filterButton(context, Filter.all),
            filterButton(context, Filter.active),
            filterButton(context, Filter.completed),
          ],
        )
      ],
    );
  }
}

Widget filterButton(BuildContext context, Filter filter) {
  return TextButton(
    onPressed: () {
      context.read<TodoFilterOptionsCubit>().changeFilter(filter);
    },
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(10.0),
      primary: context.watch<AppCubit>().state.themeMode == ThemeMode.light
          ? Colors.blue
          : const Color.fromARGB(255, 4, 248, 224),
    ),
    child: Text(
      filter == Filter.all
          ? AppStrings.all.tr(context)
          : filter == Filter.active
              ? AppStrings.active.tr(context)
              : AppStrings.completed.tr(context),
      style: TextStyle(
        fontSize: 18.0,
        color: textColor(context, filter),
      ),
    ),
  );
}

Color textColor(BuildContext context, Filter filter) {
  return context.watch<TodoFilterOptionsCubit>().state.filter == filter
      ? Colors.blue
      : Colors.grey;
}
