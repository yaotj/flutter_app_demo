import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DemoAction { action,changeLocale }

class DemoActionCreator {
  static Action onAction() {
    return const Action(DemoAction.action);
  }
  static Action onChangeLocale() {
    return const Action(DemoAction.changeLocale);
  }
}
