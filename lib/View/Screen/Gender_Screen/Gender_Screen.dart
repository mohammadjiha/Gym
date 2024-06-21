
import 'package:flutter/material.dart';
import 'package:gymtask/View/Screen/Gender_Screen/body/body_Gender.dart';

class GenderScreen extends StatelessWidget{
  static const String routName ='GenderScreen';
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyGenderScreen(),
    );
  }

}