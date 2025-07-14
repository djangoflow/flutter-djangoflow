import 'package:analytics/analytics.dart';
import 'package:flutter/foundation.dart';

/// An [AnalyticService] that performs [AnalyticAction]s.
class DjangoflowAnalytics extends AnalyticService {
  DjangoflowAnalytics._internal() : super.empty();
  static DjangoflowAnalytics get instance => _instance;
  static final DjangoflowAnalytics _instance = DjangoflowAnalytics._internal();

  bool _hasInitialized = false;

  @visibleForTesting
  static DjangoflowAnalytics get testInstance =>
      DjangoflowAnalytics._internal();

  void init() {
    _hasInitialized = true;
  }

  final _strategies = <AnalyticStrategy>{};

  /// Returns true if the DjangoflowAnalytics has been initialized.
  bool get hasInitialized => _hasInitialized;

  /// Returns a list of all the strategies.
  List<AnalyticStrategy> get strategies => _strategies.toList();

  /// Perform [action] with all the strategies.
  @override
  void performAction(AnalyticAction action) {
    if (hasInitialized) {
      _getStrategiesByAction(action)
          .forEach((strategy) => strategy.performAction(action));
    }
  }

  /// Add [strategy]s to the service.
  void addAllStrategies(
    List<AnalyticStrategy> strategies,
  ) =>
      _strategies.addAll(strategies);

  List<AnalyticStrategy> _getStrategiesByAction(
    AnalyticAction event,
  ) {
    final properStrategies =
        _strategies.where((strategy) => strategy.canHandle(event)).toList();
    if (properStrategies.isEmpty) {
      debugPrint(
        'No strategy for action:'
        ' ${event.runtimeType} in strategies $_strategies',
      );
    }
    return properStrategies;
  }
}
