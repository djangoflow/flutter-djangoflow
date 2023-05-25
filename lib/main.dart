import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_local.dart';
import 'cubits/active_todo_count/active_todo_count_cubit.dart';
import 'cubits/filtered_todo/filtered_todo_cubit.dart';
import 'cubits/todo_filter_options/todo_filter_options_cubit.dart';
import 'cubits/todo_list/todo_list_cubit.dart';
import 'cubits/todo_search/todo_search_cubit.dart';
import 'pages/todo_pages/todos_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DjangoflowAppRunner.run(onException: (exception, stackTrace) {
    DjangoflowAppSnackbar.showError(exception.toString());
  }, rootWidgetBuilder: (appBuilder) {
    return const MyApp();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBuilder(
      // if you have no any repository/listeners  do not initialize repositoryProviders/listeners
      // repositoryProviders: [],
      // listeners: [],
      providers: [
        BlocProvider<AppCubit>(
          create: (context) => AppCubit.instance,
        ),
        BlocProvider<TodoFilterOptionsCubit>(
          create: (context) => TodoFilterOptionsCubit(),
        ),
        BlocProvider<TodoSearchCubit>(
          create: (context) => TodoSearchCubit(),
        ),
        BlocProvider<TodoListCubit>(
          create: (context) => TodoListCubit(),
        ),
        BlocProvider<ActiveTodoCountCubit>(
          create: (context) => ActiveTodoCountCubit(
              initialActiveTodoCount:
                  context.read<TodoListCubit>().state.todos.length,
              todoListCubit: BlocProvider.of<TodoListCubit>(context)),
        ),
        BlocProvider<FilteredTodoCubit>(
          create: (context) => FilteredTodoCubit(
              initialListTodo: context.read<TodoListCubit>().state.todos,
              todoFilterCubit: BlocProvider.of<TodoFilterOptionsCubit>(context),
              todoSearchCubit: BlocProvider.of<TodoSearchCubit>(context),
              todoListCubit: BlocProvider.of<TodoListCubit>(context)),
        ),
      ],
      builder: (BuildContext context) =>
          // Using AppCubitBuilder example
          AppCubitBuilder(
        builder: (context, state) {
          return MaterialApp(
            title: 'Djangoflow App',
            locale: Locale(state.locale),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback: (currentLocal, supportedLocales) {
              for (var locale in supportedLocales) {
                if (currentLocal != null &&
                    currentLocal.languageCode == locale.languageCode) {
                  return currentLocal;
                }
              }
              return supportedLocales.first;
            },
            supportedLocales: const [
              Locale('en', ""),
              Locale("ar", ""),
            ],
            theme: state.themeMode == ThemeMode.light
                ? ThemeData.light()
                : ThemeData.dark(),
            home: const TodosPage(),
          );
        },
      ),

      // Using AppCubitConsumer example
      /*AppCubitConsumer(
              builder: (context,state){
            return MaterialApp(
              title: 'Djangoflow Apps',
              locale: Locale(state.locale),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (currentLocal, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (currentLocal != null &&
                      currentLocal.languageCode == locale.languageCode) {
                    return currentLocal;
                  }
                }
                return supportedLocales.first;
              },
              supportedLocales: const [
                Locale('en', ""),
                Locale("ar", ""),
              ],
              theme: state.themeMode == ThemeMode.light
                  ? ThemeData.light()
                  : ThemeData.dark(),
              home: const TodosPage(),
            );
          } , listener: (context, state) {})*/
    );
  }
}
