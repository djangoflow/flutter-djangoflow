import 'package:flutter/material.dart';

mixin MountedSetState<T extends StatefulWidget> on State<T> {
  void mountedSetState(VoidCallback fn) => mounted ? setState(fn) : null;
}
