import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymtask/View/Screen/Home_Screen/body/Body_HomeScreen.dart';
import 'package:gymtask/const/const.dart';
import 'package:sizer/sizer.dart';

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
        title: Text(
          'Home',
          style: GoogleFonts.faustina(
              color: color.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.normal),
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
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Notfaction',
            icon: Icon(Icons.add_alert_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Messages',
            icon: Icon(Icons.message_outlined),
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
