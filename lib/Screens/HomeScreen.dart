import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/Screens/CoruseDetails.dart';
import 'package:meditation_app/constants.dart';

import 'Reminder.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kPagebackgroundcolor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset("asset/image/svgfile.svg"),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Good Morning, Afsar",
                  style: HeadingText.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 28),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We Wish you have a good day",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 19,
                      fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    //
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kBackgroundColor),
                        height: 210,
                        width: 177,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                  "asset/image/Mask Group.svg"),
                            ),
                            Container(
                              transform: Matrix4.translationValues(10, 80, 0),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Basics',
                                    style: HeadingText2.copyWith(
                                      color: kButtonTextColor,
                                    ),
                                  ),
                                  Text(
                                    'COURSE',
                                    style: TextStyle(
                                        color: kButtonTextColor, fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                transform: Matrix4.translationValues(0, 150, 0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '3-10 MIN',
                                        style: TextStyle(
                                            color: kButtonTextColor,
                                            fontSize: 11),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (_) =>Reminder()));
                                          },
                                          color: kButtonTextColor,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 10),
                                            child: Text('START'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: yellowrColor),
                        height: 210,
                        width: 177,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              child: SvgPicture.asset("asset/Mask Group.svg"),
                            ),
                            Container(
                              transform: Matrix4.translationValues(10, 80, 0),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Relaxation',
                                    style: HeadingText2.copyWith(),
                                  ),
                                  Text(
                                    'MUSIC',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                transform: Matrix4.translationValues(0, 150, 0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '3-10 MIN',
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: MaterialButton(
                                          onPressed: () {

                                            Navigator.push(context, MaterialPageRoute(builder: (_) =>CourseDetails()));

                                          },
                                          color: Colors.black,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 10),
                                            child: Text(
                                              'START',
                                              style: TextStyle(
                                                  color: CupertinoColors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 95,
                  width: 374,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('asset/image/image (29).png'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Daily Through",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "MADITATION . 3-10 MIN",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.play_arrow_sharp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Recomended for you",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 165,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 161,
                    width: 162,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 162,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('asset/image/Mask Group (4).png'),
                              fit: BoxFit.fill,
                            ),
                            color: greenColor,
                          ),
                          // child: SvgPicture.asset("asset/image/Mask Group(4).svg",fit: BoxFit.cover,),

                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Focus",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        Text(
                          "MADITATION . 3-10 MIN",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
