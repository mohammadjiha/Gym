import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class textfield extends StatelessWidget{
  final String hint;
  final Icon icon;

  const textfield({super.key, required this.hint, required this.icon});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      controller: TextEditingController(),
      decoration: InputDecoration(
        suffixIcon:icon,
        suffixIconColor: const Color.fromRGBO(119, 119, 119, 1),
        hintText: hint,
        hintStyle: GoogleFonts.faustina(
          fontSize: 13.sp,
          color: const Color.fromRGBO(119, 119, 119, 1),
        ),
      ),
    );
  }

}