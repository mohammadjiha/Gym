import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/l10n/app_locale.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/l10n.dart';

class PageView1 extends StatefulWidget {
  const PageView1({super.key});

  @override
  State<PageView1> createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
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
            top: 0,
            left: 0,
            child: ElevatedButton(onPressed: (){setState(() {
              AppLocale().changeLanguage();
            });}, child: Text(S.of(context).changelanguage))),
        Positioned(
          bottom: height * 0.2,
          left: width * 0.1,
          right: width * 0.1,
          child: Text(
            S.of(context).welcomeToFitkitUiKit,
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
