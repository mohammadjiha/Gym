import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Home_Screen/Widget/row.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.05, top: height * 0.02),
            child: Text(
              'Workout Exercises',
              style: GoogleFonts.faustina(
                  textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: color.black,
                fontSize: 20.sp,
              )),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: height * 0.02,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: width * 0.04,
                ),
                const RowWidget(
                  NameImage: 'young-fitness-man-studio_7502-5004 1.png',
                  NameTitle: 'Abs',
                  NameTitle2: 'Perfection',
                  NameImage2: 'Rectangle 13.png',
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                const RowWidget(
                  NameImage:
                      'front-view-woman-with-dumbbells-copy-space_23-2148499217 1.png',
                  NameTitle: 'Good',
                  NameTitle2: 'Cardio',
                  NameImage2: 'Rectangle 13.png',
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                const RowWidget(
                  NameImage:
                      'full-shot-woman-exercising-with-dumbbell_23-2148768890 1.png',
                  NameTitle: 'Arms',
                  NameTitle2: 'Stretching',
                  NameImage2: 'Rectangle 13.png',
                ),
                SizedBox(
                  width: width * 0.05,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
