import 'dart:math';
import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter/material.dart' as prefix0;

import 'action.dart';
import 'state.dart';

Reducer<GlobalState> buildReducer() {
  return asReducer(
    <Object, Reducer<GlobalState>>{
      GlobalAction.changeThemeColor: _onchangeThemeColor,
      GlobalAction.changeLocale: _onChangeLocale,
    },
  );
}

List<Color> _colors = <Color>[
  Colors.green,
  Colors.red,
  Colors.black,
  Colors.blue
];

List<Locale> _locales = <Locale>[
  Locale('zh', 'CH'),
  Locale('en', 'US'),
];

GlobalState _onchangeThemeColor(GlobalState state, Action action) {
  final Color next =
      _colors[((_colors.indexOf(state.themeColor) + 1) % _colors.length)];
  return state.clone()..themeColor = next;
}

GlobalState _onChangeLocale(GlobalState state, Action action) {
  int index=_locales.indexOf(state.locale);
  if(index<1){
    index=1;
  }else{
    index=0;
  }
  return state.clone()..locale = _locales[index];
}
