import 'package:djangoflow_analytics/src/data/interfaces/map_params_cutter.dart';
import 'package:djangoflow_analytics/src/data/interfaces/name_cutter.dart';
import 'package:djangoflow_analytics/src/data/interfaces/value_cutter.dart';

abstract class EventCutter implements NameCutter, ValueCutter, MapParamCutter {}
