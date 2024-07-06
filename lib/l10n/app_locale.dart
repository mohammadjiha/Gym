import 'dart:ui';

import 'package:scoped_model/scoped_model.dart';

class AppLocale extends Model{
  static final AppLocale _shared = AppLocale._translate();
  factory AppLocale() {
    return _shared;
  }
  AppLocale._translate();
  Locale myAppLocale = const Locale('en');
  void changeLanguage(){
    if(myAppLocale.languageCode=='en'){
      myAppLocale=const Locale('ar');
    }
    else{myAppLocale=const Locale('en');
    }
    notifyListeners();
  }
}
