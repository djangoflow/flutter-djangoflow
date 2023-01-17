import 'package:analytics/analytics.dart';
import 'package:flutter/foundation.dart';

class DjangoflowAnalytics extends AnalyticService<AnalyticAction> {
  static DjangoflowAnalytics get instance => _instance;
  static final DjangoflowAnalytics _instance = DjangoflowAnalytics._internal();

  DjangoflowAnalytics._internal() : super();

  final _performers = <AnalyticActionPerformer<AnalyticAction>>{};

  @override
  void performAction(AnalyticAction action) {
    _getPerformersByAction(action)
        .forEach((performer) => performer.perform(action));
  }

  /// Add [performer] to the service.
  void addAllActionPerformers(
    List<AnalyticActionPerformer<AnalyticAction>> performers,
  ) =>
      _performers.addAll(performers);

  List<AnalyticActionPerformer<AnalyticAction>> _getPerformersByAction(
    AnalyticAction event,
  ) {
    final properPerformers =
        _performers.where((performer) => performer.canHandle(event)).toList();
    if (properPerformers.isEmpty) {
      debugPrint(
        'No action performer for action:'
        ' ${event.runtimeType} in performers $_performers',
      );
    }
    return properPerformers;
  }
}
