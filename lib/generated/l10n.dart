// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Gym`
  String get appName {
    return Intl.message(
      'Gym',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Fit Kit`
  String get fitKit {
    return Intl.message(
      'Fit Kit',
      name: 'fitKit',
      desc: '',
      args: [],
    );
  }

  /// `Fit\t`
  String get fitt {
    return Intl.message(
      'Fit\t',
      name: 'fitt',
      desc: '',
      args: [],
    );
  }

  /// `Kit`
  String get kit {
    return Intl.message(
      'Kit',
      name: 'kit',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get welcome {
    return Intl.message(
      'Welcome!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Sign into Your Account`
  String get signIntoYourAccount {
    return Intl.message(
      'Sign into Your Account',
      name: 'signIntoYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Email Id*`
  String get emailId {
    return Intl.message(
      'Email Id*',
      name: 'emailId',
      desc: '',
      args: [],
    );
  }

  /// `Password*`
  String get password {
    return Intl.message(
      'Password*',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get login {
    return Intl.message(
      'LOGIN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?\t`
  String get dontHaveAnAccountt {
    return Intl.message(
      'Don’t have an account?\t',
      name: 'dontHaveAnAccountt',
      desc: '',
      args: [],
    );
  }

  /// `Signup`
  String get signup {
    return Intl.message(
      'Signup',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Create Your Account`
  String get createYourAccount {
    return Intl.message(
      'Create Your Account',
      name: 'createYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Username*`
  String get username {
    return Intl.message(
      'Username*',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `I Read and agree\t`
  String get iReadAndAgreet {
    return Intl.message(
      'I Read and agree\t',
      name: 'iReadAndAgreet',
      desc: '',
      args: [],
    );
  }

  /// `to Terms & Conditions`
  String get toTermsConditions {
    return Intl.message(
      'to Terms & Conditions',
      name: 'toTermsConditions',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `NEXT`
  String get next {
    return Intl.message(
      'NEXT',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `To give you a better experrince \n we need to know your Gender`
  String get toGiveYouABetterExperrinceNWeNeedTo {
    return Intl.message(
      'To give you a better experrince \n we need to know your Gender',
      name: 'toGiveYouABetterExperrinceNWeNeedTo',
      desc: '',
      args: [],
    );
  }

  /// `Let us know how \n we can help you`
  String get letUsKnowHowNWeCanHelpYou {
    return Intl.message(
      'Let us know how \n we can help you',
      name: 'letUsKnowHowNWeCanHelpYou',
      desc: '',
      args: [],
    );
  }

  /// `Weight Loss`
  String get weightLoss {
    return Intl.message(
      'Weight Loss',
      name: 'weightLoss',
      desc: '',
      args: [],
    );
  }

  /// `Better Sleeping Habit`
  String get betterSleepingHabit {
    return Intl.message(
      'Better Sleeping Habit',
      name: 'betterSleepingHabit',
      desc: '',
      args: [],
    );
  }

  /// `Track My Nutrition`
  String get trackMyNutrition {
    return Intl.message(
      'Track My Nutrition',
      name: 'trackMyNutrition',
      desc: '',
      args: [],
    );
  }

  /// `Improve Overall Fitness`
  String get improveOverallFitness {
    return Intl.message(
      'Improve Overall Fitness',
      name: 'improveOverallFitness',
      desc: '',
      args: [],
    );
  }

  /// `Get Stared`
  String get getStared {
    return Intl.message(
      'Get Stared',
      name: 'getStared',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Shoulder Press`
  String get shoulderPress {
    return Intl.message(
      'Shoulder Press',
      name: 'shoulderPress',
      desc: '',
      args: [],
    );
  }

  /// `Jogging`
  String get jogging {
    return Intl.message(
      'Jogging',
      name: 'jogging',
      desc: '',
      args: [],
    );
  }

  /// `Workout Exercises`
  String get workoutExercises {
    return Intl.message(
      'Workout Exercises',
      name: 'workoutExercises',
      desc: '',
      args: [],
    );
  }

  /// `Abs`
  String get abs {
    return Intl.message(
      'Abs',
      name: 'abs',
      desc: '',
      args: [],
    );
  }

  /// `Perfection`
  String get perfection {
    return Intl.message(
      'Perfection',
      name: 'perfection',
      desc: '',
      args: [],
    );
  }

  /// `Good`
  String get good {
    return Intl.message(
      'Good',
      name: 'good',
      desc: '',
      args: [],
    );
  }

  /// `Cardio`
  String get cardio {
    return Intl.message(
      'Cardio',
      name: 'cardio',
      desc: '',
      args: [],
    );
  }

  /// `Arms`
  String get arms {
    return Intl.message(
      'Arms',
      name: 'arms',
      desc: '',
      args: [],
    );
  }

  /// `Stretching`
  String get stretching {
    return Intl.message(
      'Stretching',
      name: 'stretching',
      desc: '',
      args: [],
    );
  }

  /// `Training Plan`
  String get trainingPlan {
    return Intl.message(
      'Training Plan',
      name: 'trainingPlan',
      desc: '',
      args: [],
    );
  }

  /// `Walking is simple,\n yet powerful\n exercise for your\n body`
  String get walkingIsSimplenYetPowerfulnExerciseForYournBody {
    return Intl.message(
      'Walking is simple,\n yet powerful\n exercise for your\n body',
      name: 'walkingIsSimplenYetPowerfulnExerciseForYournBody',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To FitKit UI Kit`
  String get welcomeToFitkitUiKit {
    return Intl.message(
      'Welcome To FitKit UI Kit',
      name: 'welcomeToFitkitUiKit',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of\n the printing and\t`
  String get loremIpsumIsSimplyDummyTextOfnThePrintingAnd {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of\n the printing and\t',
      name: 'loremIpsumIsSimplyDummyTextOfnThePrintingAnd',
      desc: '',
      args: [],
    );
  }

  /// `typesetting`
  String get typesetting {
    return Intl.message(
      'typesetting',
      name: 'typesetting',
      desc: '',
      args: [],
    );
  }

  /// `Log In With Account`
  String get logInWithAccount {
    return Intl.message(
      'Log In With Account',
      name: 'logInWithAccount',
      desc: '',
      args: [],
    );
  }

  /// `ChangeLanguage`
  String get changelanguage {
    return Intl.message(
      'ChangeLanguage',
      name: 'changelanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
