import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class LocaleModel extends ChangeNotifier {

  Locale _locale=const Locale('zh', 'CH');
  List<Locale> _locales = <Locale>[
    Locale('zh', 'CH'),
    Locale('en', 'US'),
  ];
  Locale get locale=>_locale;
  changeLocale(){
    int index=_locales.indexOf(_locale);
    if(index<1){
      index=1;
    }else{
      index=0;
    }
    _locale=_locales[index];
    notifyListeners();
  }

}
