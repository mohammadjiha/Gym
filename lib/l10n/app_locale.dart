import 'dart:ui';

class AppLocale {
  static final AppLocale _shared = AppLocale._translate();
  factory AppLocale() {
    return _shared;
  }
  AppLocale._translate();
  Locale myAppLocale = const Locale('ar');
}
