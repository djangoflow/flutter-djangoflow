import 'dart:async';

import 'package:flutter/cupertino.dart';

class Debounce {
  final int milliseconds;

  Debounce({
    required this.milliseconds,
  });

  Timer? _timer;

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer?.cancel();
    }

    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
