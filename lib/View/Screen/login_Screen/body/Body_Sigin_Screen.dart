
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Creat_Screen/Creat_Screen.dart';
import 'package:gymtask/View/Screen/Gender_Screen/Gender_Screen.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

import '../Widget/login_medai.dart';

class BodySiginScreen extends StatelessWidget {
  static const String Route = 'BodySiginScreen';
  const BodySiginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.1),
          child: Center(
            child: Text.rich(
              TextSpan(
                text: 'Fit\t',
                style: GoogleFonts.faustina(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: color.black,
                    fontSize: 50.sp,
                  ),
                ),
                children: [
                  TextSpan(
                    text: 'Kit',
                    style: GoogleFonts.faustina(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: color.Red,
                        fontSize: 50.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.23),
          child: Container(
            decoration: const BoxDecoration(color: color.black),
            height: 2,
            width: width * 0.20,
            child: const Text(''),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.1),
          child: Text(
            'Welcome!',
            style: GoogleFonts.faustina(
              textStyle: TextStyle(
                color: color.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.05),
          child: Text(
            'Sign into Your Account',
            style: GoogleFonts.faustina(
              textStyle: TextStyle(
                color: const Color.fromRGBO(119, 119, 110, 1),
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              TextField(
                obscureText: false,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.email_outlined),
                  suffixIconColor: const Color.fromRGBO(119, 119, 119, 1),
                  hintText: 'Email Id*',
                  hintStyle: GoogleFonts.faustina(
                    fontSize: 13.sp,
                    color: const Color.fromRGBO(119, 119, 119, 1),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              TextField(
                obscureText: true,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.lock),
                  suffixIconColor: const Color.fromRGBO(119, 119, 119, 1),
                  hintText: 'Password*',
                  hintStyle: GoogleFonts.faustina(
                    fontSize: 13.sp,
                    color: const Color.fromRGBO(119, 119, 119, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.01, right: width * 0.05),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'Forgot Password?',
              style: GoogleFonts.faustina(
                textStyle: TextStyle(
                  color: const Color.fromRGBO(119, 119, 119, 1),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.01),
          child: GestureDetector(
            onTap: (){Navigator.of(context).pushReplacementNamed(GenderScreen.routName);},
            child: Container(
              width: width * 0.92,
              height: 6.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(193, 35, 35, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'LOGIN',
                  style: GoogleFonts.faustina(
                    textStyle: TextStyle(
                      color: color.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.01),
          child: Text(
            'OR',
            style: GoogleFonts.faustina(
              textStyle: TextStyle(
                color: const Color.fromRGBO(119, 119, 119, 1),
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              LoginMeadi(
                  colorContener: color.facebook, NameImage: 'fasbook.png'),
              const Spacer(),
              LoginMeadi(colorContener: color.twitter, NameImage: 't.png'),
              const Spacer(flex: 3),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.02),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?\t',
                  style: GoogleFonts.faustina(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(119, 119, 119, 1),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {Navigator.of(context).pushNamed(CreatScreen.RoutName);},
                  child: Text(
                    'Signup',
                    style: GoogleFonts.faustina(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color.Red,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
