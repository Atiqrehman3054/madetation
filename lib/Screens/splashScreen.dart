import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/Screens/SelectScreen.dart';
import 'package:meditation_app/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                transform: Matrix4.translationValues(0, 360, 0),
                child: Image.asset("asset/splash.png"),
              ),
              Container(
                  transform: Matrix4.translationValues(0, -38, 0),
                  child: Column(
                    children: [
                      Text(
                        "Hi Afsar, Welcome",
                        style: HeadingText.copyWith(
                            color: kButtonTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "to Silent Moon",
                        style: HeadingText.copyWith(color: kButtonTextColor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Explore the app, Find some peace of mind to \n prepare for meditation.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: kButtonTextColor),
                      ),
                    ],
                  )),
              Container(
                transform: Matrix4.translationValues(0, -180, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'asset/svgfile.svg',
                      height: 32,
                      width: 33,
                    ),
                  ],
                ),
              ),
            ],
          ),


SizedBox(
  height: 150,
),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: MaterialButton(
              height: 63,
              minWidth: 374,
              color: Color(0xFFFFECCC),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => select_Screen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 16),
                child: Text(
                'GET STARTED',
            ),
              ),
            ),
          ),




        ],
      ),
    );

  }

}
