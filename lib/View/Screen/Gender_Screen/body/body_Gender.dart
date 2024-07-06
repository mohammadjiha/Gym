
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Gender_Screen/Widget/conter_gender.dart';
import 'package:gymtask/View/Screen/Help_Screen/Help_Screen.dart';

import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/l10n.dart';

class BodyGenderScreen extends StatelessWidget {
  const BodyGenderScreen({super.key});

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
                text: S.of(context).fitt,
                style: GoogleFonts.faustina(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: color.black,
                    fontSize: 50.sp,
                  ),
                ),
                children: [
                  TextSpan(
                    text: S.of(context).kit,
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
          padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.03),
          child: Text(
            S.of(context).gender,
            style: GoogleFonts.faustina(
              textStyle: TextStyle(
                color: color.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const ConterGender(nameImage: 'male 1.png'),
        SizedBox(
          height: height * 0.03,
        ),
        const ConterGender(nameImage: 'female 1.png'),
        Padding(
          padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.02),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HelpScreen.routName);
            },
            child: Container(
              width: width * 0.92,
              height: 6.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(193, 35, 35, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  S.of(context).next,
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
        Text(
          S.of(context).toGiveYouABetterExperrinceNWeNeedTo,
          style: GoogleFonts.faustina(
            textStyle: TextStyle(
              fontWeight: FontWeight.normal,
              color: const Color.fromRGBO(119, 119, 119, 1),
              fontSize: 10.sp,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
