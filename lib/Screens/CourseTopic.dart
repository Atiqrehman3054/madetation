import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CourseTopic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPagebackgroundcolor,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                transform: Matrix4.translationValues(0, 120, 0),
                child: Image.asset("asset/Union.png"),
              ),
              Container(
                  transform: Matrix4.translationValues(0, 68, 0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What Brings you",
                          style: HeadingText.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "to Silent Moon?",
                          style: HeadingText.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "choose a topic to focuse on:",
                          style: TextStyle(color: Colors.black38, fontSize: 18),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SingleChildScrollView(

            child:  Container(

              transform: Matrix4.translationValues(0, -520, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: containerColor,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  child: Image.asset(
                                    "asset/image/image (27).png",
                                    height: 250,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(10, -10, 0),
                                  child: Text(
                                    'Reduce Stress',
                                    style: kTextContainer,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 167,
                            width: 176,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFEB18F),
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Image.asset(
                                  "asset/image/image (28).png",
                                  height: 190,
                                  width: 150,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(15, -10, 0),
                                  child: Text(' Increase \n Happiness',
                                      style: kTextContainer.copyWith(
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF6CB28E),
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  child: Image.asset(
                                    "asset/image/image (4).png",
                                    height: 130,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(10, -10, 0),
                                  child: Text('Personal \n Growth',
                                      style: kTextContainer),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 167,
                            width: 176,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: containerColor,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Image.asset(
                                  "asset/image/image (27).png",
                                  height: 250,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(15, -10, 0),
                                  child: Text(
                                    ' Increase \n Happiness',
                                    style: kTextContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 167,
                            width: 176,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFA6E5A),
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Image.asset(
                                  "asset/image/image (9).png",
                                  height: 120,
                                  width: 120,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(15, -10, 0),
                                  child: Text('Improve \n Performanee',
                                      style: kTextContainer),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFCF86),
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  child: Image.asset(
                                    "asset/image/image (8).png",
                                    height: 180,
                                    width: 150,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(10, -10, 0),
                                  child: Text('Reduce Anxiety',
                                      style: kTextContainer.copyWith(
                                          color: Colors.black)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 167,
                            width: 176,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF4E5567),
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Image.asset(
                                  "asset/image/image (5).png",
                                  height: 120,
                                  width: 160,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(15, -10, 0),
                                  child:
                                  Text('Better Sleep', style: kTextContainer),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFD9A5B5),
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  child: Image.asset(
                                    "asset/image/image (6).png",
                                    height: 120,
                                    width: 180,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  transform:
                                  Matrix4.translationValues(10, -10, 0),
                                  child: Text(
                                    'Work Time',
                                    style: kTextContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],


      ),
    );
  }
}
