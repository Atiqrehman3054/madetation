import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/Screens/Sleep/Sleep.dart';

import '../../constants.dart';
import 'SleepMusic.dart';


class Come extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [


          SvgPicture.asset("asset/image/welcome sleep.svg",fit: BoxFit.cover,),

          Container(
            transform: Matrix4.translationValues(0, 150, 0),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Wellcome To Sleep",
                  style: HeadingText2.copyWith(

                      color: ButtonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Explore the new king of sleep. It uses sound \n and vesualization to create perfect conditions \n  for refreshing sleep.",textAlign: TextAlign.center,
                  style: HeadingText2.copyWith(
                      color: ButtonTextColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                ),

              ],
            ),
          ),


          Container(
            transform: Matrix4.translationValues(20, 700, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: MaterialButton(
                height: 63,
                minWidth: 374,
                color: kBackgroundColor,
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (_) => Sleep()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 16),
                  child: Text(
                    'PLAY',style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    ));
  }
}
