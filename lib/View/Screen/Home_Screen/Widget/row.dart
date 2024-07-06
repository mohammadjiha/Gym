
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

class RowWidget extends StatelessWidget {
  final String nameImage;
  final String nameImage2;
  final String nameTitle;
  final String nameTitle2;

  const RowWidget(
      {super.key,
        required this.nameImage,
        required this.nameTitle,
        required this.nameTitle2,
        required this.nameImage2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/image/$nameImage',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Image.asset(
                'assets/image/$nameImage2',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.02,
              top: MediaQuery.of(context).size.height * 0.01,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: color.Red,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: color.white,
                    size: 13.sp,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.02,
              child: Text(
                '$nameTitle\n$nameTitle2',
                style: GoogleFonts.faustina(
                  fontSize: 15.sp,
                  color: color.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
