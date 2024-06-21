import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

class Grid extends StatelessWidget {
  final String Title;
  const Grid({super.key, required this.Title,});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/image/Group.png'),
            const SizedBox(height: 8.0),
            Text(
              Title,
              style: GoogleFonts.faustina(
                textStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: color.black,
                  fontSize: 15.sp,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Walking is simple,\n yet powerful\n exercise for your\n body',
              style: GoogleFonts.faustina(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(119, 119, 119, 1),
                  fontSize: 9.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
