import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Creat_Screen/Creat_Screen.dart';
import 'package:gymtask/View/Screen/login_Screen/login_Screen.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

class BodySignScreen extends StatelessWidget {
  const BodySignScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
                "assets/image/asian-women-are-exercising-gym-sift-through-leather-water-keeping-their-body-healthy 1.png"),
          ),
        ),
        Positioned.fill(
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(51, 49, 51, 0),
                  Color.fromRGBO(40, 38, 30, 0.22),
                  Color.fromRGBO(0, 0, 0, 0.9),
                  Color.fromRGBO(0, 0, 0, 1),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: height * 0.4,
            right: width * 0.26,
            child: Text(
              'Fit Kit',
              style: GoogleFonts.faustina(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: color.white,
                      fontSize: 50.sp)),
            )),
        Positioned(
            bottom: height * 0.4,
            right: width * 0.25,
            child: Container(
              decoration: BoxDecoration(color: color.white),
              height: 2,
              width: width * 0.23,
              child: const Text(''),
            )),
        Positioned(
            bottom: height * 0.25,
            right: width * 0.15,
            child: Text.rich(
              TextSpan(
                text: 'Lorem Ipsum is simply dummy text of\n the printing and ',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: const Color.fromRGBO(159, 159, 159, 1),
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp),
                ),
                children: [
                  TextSpan(
                    text: 'typesetting',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: color.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            )),
        Positioned(
            bottom: height * 0.13,
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(LiginScreen.Route);
                },
                child: Container(
                  width: width * 0.92,
                  height: 6.h,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(193, 35, 35, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.faustina(
                        textStyle: TextStyle(
                            color: color.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 20.sp)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )),
        Positioned(
            bottom: height * 0.05,
            right: width * 0.32,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(CreatScreen.RoutName);
              },
              child: Text(
                'Log In With Account ',
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: color.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 10.sp)),
              ),
            ))
      ],
    );
  }
}
