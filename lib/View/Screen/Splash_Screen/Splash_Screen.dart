import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymtask/View/Screen/Splash_Screen/body/Splash_body.dart';

class SplashScreen extends StatelessWidget{
  static const String RoutName='SplashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
