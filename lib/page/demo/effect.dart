import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app_demo/global_store/action.dart';
import 'package:flutter_app_demo/global_store/store.dart';
import 'action.dart';
import 'state.dart';

Effect<DemoState> buildEffect() {
  return combineEffects(<Object, Effect<DemoState>>{
    DemoAction.action: _onAction,
    DemoAction.changeLocale: _onChangeLocale,
  });
}

void _onAction(Action action, Context<DemoState> ctx) {
}
void _onChangeLocale(Action action, Context<DemoState> ctx) {
  GlobalStore.store.dispatch(GlobalActionCreator.onChangeLocale());
}