import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymtask/View/Screen/Help_Screen/body/BodyHelpScreen.dart';

class HelpScreen extends StatelessWidget{
  static const String RoutName ='HelpScreen';
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BodyHelpScreen(),
    );
  }

}