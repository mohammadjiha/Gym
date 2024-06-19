import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymtask/const/const.dart';

import 'body/Body_Sigin_Screen.dart';

class LiginScreen extends StatelessWidget{
  static const String Route ='LiginScreen';
  const LiginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.white,
      body: BodySiginScreen(),
    );
  }

}