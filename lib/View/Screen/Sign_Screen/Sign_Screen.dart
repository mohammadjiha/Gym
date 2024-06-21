import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymtask/View/Screen/Sign_Screen/body/Body_SigScreen.dart';

class SignScreen extends StatelessWidget{
  static const String routName='SignScreen';

  const SignScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySignScreen(),
    );
  }
}
