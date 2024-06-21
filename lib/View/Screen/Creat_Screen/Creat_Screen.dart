import 'package:flutter/material.dart';
import 'package:gymtask/View/Screen/Creat_Screen/body/Body_Creat_Screen.dart';

class CreatScreen extends StatelessWidget{
  static const String RoutName='CreatScreen';
  const CreatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyCreatScreen(),
    );
  }

}