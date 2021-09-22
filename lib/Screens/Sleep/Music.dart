import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';


class Music extends StatefulWidget {

  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
backgroundColor: sleepBackgroundColor,
      body: Stack(

        children: [
          Container(transform: Matrix4.translationValues(20, 0, 0),
              child: Image.asset("asset/image/Union (1).png",fit: BoxFit.fitWidth)),
          Container(
            child: Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("asset/Group 6792.svg"),
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
          Positioned(
            left: 90,
            top: 350,

            child:   Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Night Island",
                    style: HeadingText2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 28),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Text("SLEEP MUSIC",
                    style: HeadingText2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ],
              ),
            ),),
          Positioned(
            left: 20,
            top: 450,

            child: Image.asset("asset/Group 6838.png"),),

        ],
      ),
    ));
  }
}

