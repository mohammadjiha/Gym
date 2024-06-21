import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Home_Screen/body/Body_HomeScreen.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  static const String RoutName = 'HomeScreen';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.Red,
        leading: Image.asset('assets/image/menu 1.png'),
        actions: [
          Icon(
            Icons.search,
            color: color.white,
            size: 30.sp,
          )
        ],
        title: Text(
          'Home',
          style: GoogleFonts.faustina(
              color: color.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: BodyHomeScreen(),
    );
  }
}
