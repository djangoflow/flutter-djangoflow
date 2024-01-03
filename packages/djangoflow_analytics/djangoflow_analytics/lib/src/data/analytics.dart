import 'package:analytics/analytics.dart';
import 'package:flutter/foundation.dart';

/// An [AnalyticService] that performs [AnalyticAction]s.
class DjangoflowAnalytics extends AnalyticService<AnalyticAction> {
  DjangoflowAnalytics._internal() : super();
  static DjangoflowAnalytics get instance => _instance;
  static final DjangoflowAnalytics _instance = DjangoflowAnalytics._internal();

  bool _hasInitialized = false;

  @visibleForTesting
  static DjangoflowAnalytics get testInstance =>
      DjangoflowAnalytics._internal();

  void init() {
    _hasInitialized = true;
  }

  final _performers = <AnalyticActionPerformer<AnalyticAction>>{};

  /// Returns true if the DjangoflowAnalytics has been initialized.
  bool get hasInitialized => _hasInitialized;

  /// Returns a list of all the performers.
  List<AnalyticActionPerformer> get performers => _performers.toList();

  /// Perform [action] with all the performers.
  @override
  void performAction(AnalyticAction action) {
    if (hasInitialized) {
      _getPerformersByAction(action)
          .forEach((performer) => performer.perform(action));
    }
  }

  /// Add [performer]s to the service.
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
