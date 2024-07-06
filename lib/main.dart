import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';
import 'package:gymtask/View/Screen/Creat_Screen/Creat_Screen.dart';
import 'package:gymtask/View/Screen/Gender_Screen/Gender_Screen.dart';
import 'package:gymtask/View/Screen/Help_Screen/Help_Screen.dart';
import 'package:gymtask/View/Screen/Home_Screen/Home_Screen.dart';
import 'package:gymtask/View/Screen/Splash_Screen/Splash_Screen.dart';
import 'package:gymtask/View/Screen/login_Screen/login_Screen.dart';
import 'package:gymtask/View/Screen/Sign_Screen/Sign_Screen.dart';
import 'package:gymtask/generated/l10n.dart';
import 'package:gymtask/l10n/app_locale.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
            '/': (context) => const SplashScreen(),
            SignScreen.routName: (context) => const SignScreen(),
            LiginScreen.route:(context)=>const LiginScreen(),
            CreatScreen.RoutName:(context)=>const CreatScreen(),
            GenderScreen.routName:(context)=>const GenderScreen(),
            HelpScreen.routName:(context)=>const HelpScreen(),
            HomeScreen.RoutName:(context)=> const HomeScreen(),
          },
          locale: AppLocale().myAppLocale,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
