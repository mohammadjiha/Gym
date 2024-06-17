import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:gymtask/View/Screen/Splash_Screen/Splash_Screen.dart';
import 'package:sizer/sizer.dart';

import 'View/Screen/Sign_Screen/Sign_Screen.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const SplashScreen(),
          SignScreen.RoutName: (context) => SignScreen(),
        },
      );
    });
  }
}
