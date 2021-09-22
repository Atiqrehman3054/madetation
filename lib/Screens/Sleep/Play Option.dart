import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/Screens/CourseTopic.dart';
import 'package:meditation_app/Screens/Sleep/Music.dart';
import 'package:meditation_app/constants.dart';



class PlayOption extends StatefulWidget {
  @override
  _PlayOptionState createState() => _PlayOptionState();
}

class _PlayOptionState extends State<PlayOption>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: sleepBackgroundColor,
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                // image: DecorationImage(
                //   image: AssetImage('asset/image/Mask Group (3).png'),
                //   fit: BoxFit.fill,
                // ),
              ),

              height: 288,
              width: 414,
              child: Stack(
                children: [

                  SvgPicture.asset("asset/image/sleep.svg",height: 500,width: 600,),
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
                    transform: Matrix4.translationValues(0, 45, 0),
                  ),
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
                    "Night Island",
                    style: HeadingText2.copyWith(
                       color: ButtonTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 34),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "4 MIN . SLEEP MUSIC",
                    style: HeadingText2.copyWith(
                        color: Colors.white54,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ease the mind into a restful night’s sleep  with \n these deep, amblent tones.",
                    style: TextStyle(

                        fontWeight: FontWeight.w300,
                        color: Colors.white60,
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
                            color: Colors.white,
                          ),
                          Text("24,234 Listening",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.headset,
                            color: Colors.white,
                          ),
                          Text("24,234 Favortis",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white54,
                    ),
                  ),
                  Text(
                    "Related",
                    style: HeadingText2.copyWith(
                        color: ButtonTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 174,
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 122,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('asset/image/Mask Group (4).png'),
                                  fit: BoxFit.fill,
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sweet Dream",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18,color: ButtonTextColor),
                            ),


                            Text(
                              "45 MIN . SLEEP MUSIC",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white54
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 174,
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 122,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('asset/image/Mask Group (5).png'),
                                  fit: BoxFit.fill,
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Moon Cloud",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18,color: ButtonTextColor),
                            ),


                            Text(
                              "45 MIN . SLEEP MUSIC",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white54
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              SizedBox(
                height: 20,
              ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: MaterialButton(
                      height: 63,
                      minWidth: 374,
                      color: kBackgroundColor,
                      onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder: (_) => Music()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 16),
                        child: Text(
                          'PLAY',style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
