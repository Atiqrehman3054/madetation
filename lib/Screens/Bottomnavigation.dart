
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Screens/CourseTopic.dart';
import 'package:meditation_app/Screens/HomeScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/Screens/Music.dart';
import 'package:meditation_app/Screens/Sleep/Sleep.dart';
import 'package:meditation_app/Screens/Sleep/SleepMusic.dart';
import 'package:meditation_app/constants.dart';

import 'Meditate.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  List<Widget> tabs = [
    HomeScreen(),
Sleep(),
    Meditate(),
    Music(),
    CourseTopic(),


  ];
  // @override
  // void initState() {
  //   tabs = [
  //
  //     HomeScreen(),
  //     Favourite(),
  //
  //
  //   ];
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: tabs[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,

          selectedFontSize: 8,
          unselectedFontSize: 6,
          showUnselectedLabels: true,
          elevation: 2,
          backgroundColor: kBackgroundColor,
          selectedItemColor: kBackgroundColor,


          items:  <BottomNavigationBarItem>[

            BottomNavigationBarItem(

               // SvgPicture.asset("asset/Group 32.svg",height: 50,width: 50,color: Colors.red,),
              icon: Image.asset(
                "asset/image/image (18).png",
                width:  40.0,
                height:  40.0,
              ),

              label: '',

            ),
            BottomNavigationBarItem(

               // SvgPicture.asset("asset/Group 32.svg",height: 50,width: 50,color: Colors.red,),
              icon: Image.asset(
                "asset/image/image (17).png",
                width:  40.0,
                height:  40.0,
              ),

              label: '',

            ),
            BottomNavigationBarItem(

               // SvgPicture.asset("asset/Group 32.svg",height: 50,width: 50,color: Colors.red,),
              icon: Image.asset(
                "asset/image/Group 29.png",
                width:  40.0,
                height:  40.0,
              ),

              label: '',

            ),
            BottomNavigationBarItem(

               // SvgPicture.asset("asset/Group 32.svg",height: 50,width: 50,color: Colors.red,),
              icon: Image.asset(
                "asset/image/Group 28.png",
                width:  40.0,
                height:  40.0,
              ),

              label: '',

            ),
            BottomNavigationBarItem(

               // SvgPicture.asset("asset/Group 32.svg",height: 50,width: 50,color: Colors.red,),
              icon: Image.asset(
                "asset/image/Group 27.png",
                width:  40.0,
                height:  40.0,
              ),

              label: '',

            ),


          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

        ),
      ),
    );
  }
}