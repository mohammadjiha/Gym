import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Home_Screen/Widget/GridView.dart';
import 'package:gymtask/View/Screen/Home_Screen/Widget/row.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/l10n.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    final List<String> titles = [
      S.of(context).shoulderPress,
      S.of(context).jogging,
      S.of(context).shoulderPress,
      S.of(context).jogging
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.05, top: height * 0.02),
              child: Text(
                S.of(context).workoutExercises,
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
                  RowWidget(
                    nameImage:
                        'young-fitness-man-studio_7502-5004 1.png',
                    nameTitle: S.of(context).abs,
                    nameTitle2: S.of(context).perfection,
                    nameImage2: 'Rectangle 13.png',
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  RowWidget(
                    nameImage:
                        'front-view-woman-with-dumbbells-copy-space_23-2148499217 1.png',
                    nameTitle: S.of(context).good,
                    nameTitle2: S.of(context).cardio,
                    nameImage2: 'Rectangle 13.png',
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  RowWidget(
                    nameImage:
                        'full-shot-woman-exercising-with-dumbbell_23-2148768890 1.png',
                    nameTitle: S.of(context).arms,
                    nameTitle2: S.of(context).stretching,
                    nameImage2: 'Rectangle 13.png',
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
                S.of(context).trainingPlan,
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
                    title: titles[index],
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
