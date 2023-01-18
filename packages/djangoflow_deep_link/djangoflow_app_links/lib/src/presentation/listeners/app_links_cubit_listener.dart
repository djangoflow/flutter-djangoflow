import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLinksCubitListener extends BlocListener<AppLinksCubit, Uri?> {
  AppLinksCubitListener({
    super.key,
    super.child,
    required super.listener,
    BlocListenerCondition<Uri?>? listenWhen,
  }) : super(
          listenWhen: listenWhen ?? (prev, current) => prev != current,
        );
}
