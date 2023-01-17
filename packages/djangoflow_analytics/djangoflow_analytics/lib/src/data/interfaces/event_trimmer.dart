import 'package:djangoflow_analytics/src/data/interfaces/map_params_trimmer.dart';
import 'package:djangoflow_analytics/src/data/interfaces/name_trimmer.dart';
import 'package:djangoflow_analytics/src/data/interfaces/value_trimmer.dart';

abstract class EventTrimmer
    implements NameTrimmer, ValueTrimmer, MapParamTrimmer {}
