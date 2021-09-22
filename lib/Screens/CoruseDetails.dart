import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/Screens/CourseTopic.dart';
import 'package:meditation_app/constants.dart';

import 'Reminder.dart';

class CourseDetails extends StatefulWidget {
  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    Color getColor(Set states) {
      const Set interactiveStates = {
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPagebackgroundcolor,
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage('asset/image/image (1).png'),
                  fit: BoxFit.fill,
                ),
              ),
              height: 288,
              width: 414,
              child: Stack(
                children: [
                  Container(

                    child: Row(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset("asset/image/Group 6792.svg"),
                        ),
                        SizedBox(
                          width: 133,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: SvgPicture.asset("asset/image/Group 6846.svg"),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: SvgPicture.asset("asset/image/Group 6845.svg"),
                        ),
                      ],
                    ),
                    transform: Matrix4.translationValues(0, 40, 0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Happy Morning",
                    style: HeadingText2.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 34),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "COURSE",
                    style: HeadingText2.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ease the mind into a restful night’s sleep  with \n these deep, amblent tones.",
                    style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text("24,234 Favortis")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.headset,
                            color: Colors.blue[300],
                          ),
                          Text("34,234 Listening")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Text(
                    "Pick a Nnrrator",
                    style: HeadingText2.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  Container(
                    height: 800,
                    child: Column(
                      children: [
                        TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: kBackgroundColor,
                          indicatorColor: kBackgroundColor,
                          tabs: [
                            Tab(
                              text: 'Male Voice',
                            ),
                            Tab(
                              text: 'Female Voice',
                            )
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                children: <Widget>[
                                  ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 7,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "asset/image/Group 6.svg"),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Focus Attention",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 15),
                                                      ),
                                                      Text(
                                                        "5 MIN",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1,
                                            ),
                                          ],
                                        );
                                      })
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 7,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "asset/image/Group 6.svg"),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Focus Attention",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 15),
                                                      ),
                                                      Text(
                                                        "5 MIN",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1,
                                            ),
                                          ],
                                        );
                                      })
                                ],
                              ),
                            ],
                            controller: _tabController,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
