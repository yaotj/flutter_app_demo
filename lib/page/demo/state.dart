import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app_demo/global_store/state.dart';

class DemoState implements GlobalBaseState, Cloneable<DemoState> {

  @override
  DemoState clone() {
    return DemoState()
    ..locale=locale
    ..themeColor=themeColor;
  }

  @override
  Locale locale;

  @override
  Color themeColor;
}

DemoState initState(Map<String, dynamic> args) {
  return DemoState();
}
