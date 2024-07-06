
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Home_Screen/body/Body_HomeScreen.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

import '../../../generated/l10n.dart';
import '../Sign_Screen/Sign_Screen.dart';

class HomeScreen extends StatefulWidget {
  static const String RoutName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _crentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.Red,
        leading: Image.asset('assets/image/menu 1.png'),
        actions: [
          Icon(
            Icons.search,
            color: color.white,
            size: 30.sp,
          )
        ],
        title: InkWell(
          onTap: (){Navigator.of(context).pushNamed(SignScreen.routName);},
          child: Text(
            S.of(context).home,
            style: GoogleFonts.faustina(
                color: color.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        centerTitle: true,
      ),
      body: const BodyHomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20.sp,
        selectedFontSize: 10.sp,
        unselectedFontSize: 8.sp,
        selectedItemColor: color.Red,
        unselectedItemColor: const Color.fromRGBO(119, 119, 119, 1),
        items:  [
          BottomNavigationBarItem(
            label: S.of(context).home,
            icon: const Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: S.of(context).notification,
            icon: const Icon(Icons.add_alert_outlined),
          ),
          BottomNavigationBarItem(
            label: S.of(context).profile,
            icon: const Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: S.of(context).messages,
            icon: const Icon(Icons.message_outlined),
          ),
        ],
        currentIndex: _crentindex,
        onTap: (int newindex) {
          setState(() {
            _crentindex = newindex;
          });
        },
      ),
    );
  }
}
