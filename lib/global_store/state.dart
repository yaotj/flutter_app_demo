import 'dart:ui';
import 'package:flutter/material.dart' hide Action;

import 'package:fish_redux/fish_redux.dart';

abstract class GlobalBaseState {
  Color get themeColor;
  set themeColor(Color color);

  Locale get locale;
  set locale(Locale locale);
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState> {
  @override
  Color themeColor;

  @override
  Locale locale;

  @override
  GlobalState clone() {
    return GlobalState();
  }
}
