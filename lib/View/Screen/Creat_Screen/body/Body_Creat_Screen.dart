import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Creat_Screen/Widget/textfield.dart';
import 'package:gymtask/View/Screen/login_Screen/login_Screen.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/l10n.dart';
import '../../login_Screen/Widget/login_medai.dart';

class BodyCreatScreen extends StatelessWidget {
  const BodyCreatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.1,bottom:height*0.05),
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
                    text: 'Kit\t',
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
          padding: EdgeInsets.only(bottom: height * 0.05),
          child: Text(
            S.of(context).createYourAccount,
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
               textfield(hint: S.of(context).username, icon: const Icon(Icons.person)),
              SizedBox(height: height * 0.02),
               textfield(
                  hint: S.of(context).emailId, icon: const Icon(Icons.email_outlined)),
              SizedBox(height: height * 0.02),
               textfield(hint: S.of(context).password, icon: const Icon(Icons.lock)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: height * 0.01,
            right: width * 0.05,
            left: width * 0.05,
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: width * 0.01),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: color.white,
                        border: Border.all(
                            color: const Color.fromRGBO(119, 119, 119, 1))),
                    child: const Text(''),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: S.of(context).iReadAndAgreet,
                    style: GoogleFonts.faustina(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: color.black,
                        fontSize: 12.sp,
                      ),
                    ),
                    children: [
                      TextSpan(
                        text: S.of(context).toTermsConditions,
                        style: GoogleFonts.faustina(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: color.facebook,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.01),
          child: Container(
            width: width * 0.92,
            height: 6.h,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(193, 35, 35, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                S.of(context).signup,
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
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.01),
          child: Text(
            S.of(context).or,
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
                  S.of(context).dontHaveAnAccountt,
                  style: GoogleFonts.faustina(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(119, 119, 119, 1),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LiginScreen.route);
                  },
                  child: Text(
                    S.of(context).login,
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
