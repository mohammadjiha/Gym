import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

class BodyHelpScreen extends StatelessWidget {
  const BodyHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Column(
      children: [
        Padding(
          padding:EdgeInsets.only(top: height * 0.1),
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
            decoration: BoxDecoration(color: color.black),
            height: 2,
            width: width * 0.20,
            child: const Text(''),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.03),
          child: Text(
            'Let us know how \n we can help you',
            style: GoogleFonts.faustina(
              textStyle: TextStyle(
                color: color.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
