import 'package:djangoflow_bloc_extensions/djangoflow_bloc_extensions.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'action_category_state.dart';
export 'action_category_state.dart';

class ActionCategoryCubit extends HydratedCubit<ActionCategoryState>
    with SafeEmitMixin {
  static ActionCategoryCubit get instance => _instance;
  static final ActionCategoryCubit _instance = ActionCategoryCubit._internal();

  NotificationsApi? notificationsApi;

  ActionCategoryCubit._internal() : super(const ActionCategoryState());

  Future<void> load() async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));
    try {
      await _notificationsApiChecker(() async {
        final actionCategories =
            (await notificationsApi?.notificationsActionCategoriesList())?.data;
        emit(state.copyWith(
          isLoading: false,
          actionCategories: actionCategories ?? <PushActionCategory>[],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
      rethrow;
    }
  }

  Future<void> _notificationsApiChecker(Function function) async {
    if (notificationsApi == null) {
      throw Exception('NotificationsApi is not initialized');
    }
    await function();
  }

  @override
  ActionCategoryState? fromJson(Map<String, dynamic> json) =>
      ActionCategoryState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ActionCategoryState state) => state.toJson();
}
