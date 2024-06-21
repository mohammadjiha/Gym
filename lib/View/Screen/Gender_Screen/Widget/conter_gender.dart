import 'package:flutter/cupertino.dart';
import 'package:gymtask/const/const.dart';

class ConterGender extends StatelessWidget {
  final String nameImage;
  const ConterGender({super.key, required this.nameImage});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      decoration: BoxDecoration(
          color: color.white,
          border: Border.all(color: color.black),
          borderRadius: BorderRadius.circular(5)),
      height: height * 0.2,
      width: width * 0.4,
      child: Image.asset('assets/image/$nameImage'),
    );
  }
}
