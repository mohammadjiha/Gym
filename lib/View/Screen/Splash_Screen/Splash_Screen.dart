
import 'package:flutter/material.dart';
import 'package:gymtask/View/Screen/Splash_Screen/body/Splash_body.dart';

class SplashScreen extends StatelessWidget{
  static const String routName='SplashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
