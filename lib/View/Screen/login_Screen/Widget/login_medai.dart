
import 'package:flutter/cupertino.dart';

class LoginMeadi extends StatelessWidget {
  final Color colorContener;
  final String NameImage;
  const LoginMeadi(
      {super.key, required this.colorContener, required this.NameImage});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      width: width * 0.25,
      height: height * 0.05,
      decoration: BoxDecoration(color: colorContener,borderRadius: BorderRadius.circular(5)),
      child:
          Align(alignment: Alignment.center, child: Image.asset('assets/image/$NameImage')),
    );
  }
}
