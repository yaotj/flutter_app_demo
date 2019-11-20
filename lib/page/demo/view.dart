import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:provider/provider.dart';

import '../../locale_model.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(DemoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
//      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Provider.of<LocaleModel>(viewService.context).changeLocale();
              dispatch(DemoActionCreator.onChangeLocale());
            },
            child: Text('切换语言'),
          ),
          Text(MaterialLocalizations.of(viewService.context).collapsedIconTapHint),
        ],
      ),
    ),
  );
}
