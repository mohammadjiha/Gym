import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Home_Screen/Widget/GridView.dart';
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
    final List<String> titles = [
      'Shoulder Press',
      'Jogging',
      'Shoulder Press',
      'Jogging'
    ];
    return SingleChildScrollView(
      child: Column(
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
            padding: EdgeInsets.only(top: height * 0.02),
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
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, top: height * 0.02),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Training Plan',
                style: GoogleFonts.faustina(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: color.black,
                  fontSize: 20.sp,
                )),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.02, horizontal: width * 0.05),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Grid(
                    Title: titles[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
