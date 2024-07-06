import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Sign_Screen/Sign_Screen.dart';
import 'package:gymtask/View/Screen/Splash_Screen/Widget/pageview.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../generated/l10n.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: const [
            PageView1(),
            PageView1(),
            PageView1(),
          ],
        ),
        Positioned(
          bottom: size.height * 0.015,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
              color: Colors.black.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.jumpToPage(2);
                    },
                    child: Text(
                      S.of(context).skip,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                      dotColor: Colors.transparent,
                      activeDotColor: Colors.red,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (isLastPage) {
                        Navigator.of(context)
                            .pushReplacementNamed(SignScreen.routName);
                      } else {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      }
                    },
                    child: Text(
                      isLastPage ? S.of(context).signUp : S.of(context).next,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
