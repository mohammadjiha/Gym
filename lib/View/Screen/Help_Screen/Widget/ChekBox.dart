import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

class ChekBox extends StatefulWidget {
  final String HelpName;

  const ChekBox({super.key, required this.HelpName});

  @override
  State<ChekBox> createState() => _ChekBoxState();
}

class _ChekBoxState extends State<ChekBox> {
  bool _IsChecked = false;
  void _toggleCheckbox(bool? value) {
    setState(() {
      _IsChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(206, 206, 206, 1)),
          color: const Color.fromRGBO(243, 243, 243, 1),
          borderRadius: BorderRadius.circular(5),
        ),
        width: size.width,
        height: height * 0.08,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(widget.HelpName,
                    style: GoogleFonts.faustina(
                      textStyle: TextStyle(
                          color: const Color.fromRGBO(119, 119, 119, 1),
                          fontWeight: FontWeight.normal,
                          fontSize: 17.sp),
                    )),
              ),
              const Spacer(),
              Checkbox(
                value: _IsChecked,
                onChanged: _toggleCheckbox,
                splashRadius: 10,
                shape: const CircleBorder(),
                activeColor: color.Red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
