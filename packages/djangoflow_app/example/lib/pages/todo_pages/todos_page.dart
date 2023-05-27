import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_demo/app_local.dart';
import 'package:djangoflow_demo/configs/AppStrings.dart';
import 'package:djangoflow_demo/pages/todo_pages/show_todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_todo.dart';
import 'search_and_filter_todo.dart';
import 'todo_header.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  bool isSwitched = false;
  bool isEN = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScaffoldMessenger(
        key: DjangoflowAppSnackbar.scaffoldMessengerKey,
        child: Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.title.tr(context)),
                actions: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isEN = !isEN;
                            });
                            context
                                .read<AppCubit>()
                                .updateLocale(isEN ? 'ar' : 'en');
                          },
                          child: Text(
                            isEN ? 'ar' : 'en',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.redAccent,
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: IconButton(
                          visualDensity: VisualDensity.adaptivePlatformDensity,
                          onPressed: () {
                            setState(() {
                              isSwitched = !isSwitched;
                            });
                            context.read<AppCubit>().updateThemeMode(
                                isSwitched ? ThemeMode.dark : ThemeMode.light);
                            DjangoflowAppSnackbar.showInfo("Theme Switched");
                          },
                          iconSize: 30.0,
                          icon: isSwitched
                              ? const Icon(
                                  Icons.sunny,
                                )
                              : const Icon(
                                  color: Colors.black,
                                  Icons.nights_stay,
                                ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              resizeToAvoidBottomInset: false,
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: Column(
                  children: [
                    const TodoHeader(),
                    const CreateTodo(),
                    const SizedBox(height: 20.0),
                    SearchAndFilterTodo(),
                    const Expanded(child: ShowTodo()),
                    const SizedBox(height: 20.0),
                    // const ConfirmButton(),
                  ],
                ),
              ),
            ),
            SandboxBanner(
                isSandbox: context.watch<AppCubit>().state.environment ==
                    AppEnvironment.sandbox,
                message: "Debug",
                child: Container()),
          ],
        ),
      ),
    );
  }
}
