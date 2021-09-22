

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

      body: Stack(

        children: [

          Image.asset("asset/image/image (37).png"),
          Container(
            child: Row(
              children: [
                MaterialButton(
                  onPressed: () {},
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

          child:   Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Focus Attention",
              style: HeadingText2.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 28),
            ),

            SizedBox(
              height: 15,
            ),
            Text("7 DAYS OF CALM",
              style: HeadingText2.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16),
            ),
          ],
        ),),
        Positioned(
          left: 20,
          top: 450,

          child: Image.asset("asset/Group 6838.png"),),


          // Positioned(
          //   top: 200,
          //   left: 50,
          //   child: Container(child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Icon(Icons.settings_backup_restore_rounded,size: 50,),
          //
          //           Icon(Icons.play_circle_fill,size: 100,),
          //           Icon(Icons.forward_10_outlined,size: 50,),
          //
          //         ],
          //       ),
          //       Slider(
          //           value: _value.toDouble(),
          //           min: 1.0,
          //           max: 40.0,
          //           divisions: 10,
          //           activeColor: Colors.green,
          //           inactiveColor: Colors.orange,
          //           label: 'Set volume value',
          //           onChanged: (double newValue) {
          //             setState(() {
          //               _value = newValue.round();
          //             });
          //           },
          //           semanticFormatterCallback: (double newValue) {
          //             return '${newValue.round()} dollars';
          //           }
          //       ),
          //     ],
          //   ),),
          // )
        ],
      ),
    ));
  }
}

