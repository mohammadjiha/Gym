import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PageView1 extends StatelessWidget {
  const PageView1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'assets/image/female-athlete-with-dumbbells-gym 1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(51, 49, 51, 1),
                  Color.fromRGBO(0, 0, 0, 0),
                  Color.fromRGBO(0, 0, 0, 1),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: height * 0.2,
          left: width * 0.1,
          right: width * 0.1,
          child: Text(
            'Welcome To FitKit UI Kit',
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
