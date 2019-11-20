import 'package:fish_redux/fish_redux.dart';

enum GlobalAction { changeThemeColor,changeLocale }

class GlobalActionCreator {
  static Action onchangeThemeColor() {
    return const Action(GlobalAction.changeThemeColor);
  }
  static Action onChangeLocale() {
    return const Action(GlobalAction.changeLocale);
  }
}
