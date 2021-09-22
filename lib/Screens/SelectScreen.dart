import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/Screens/LoginScreen.dart';
import 'package:meditation_app/Screens/SignUp.dart';
import 'package:meditation_app/constants.dart';

class select_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPagebackgroundcolor,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                transform: Matrix4.translationValues(0, 50, 0),
                child: Image.asset("asset/Frame.png",fit: BoxFit.cover,),
              ),
              Container(
                transform: Matrix4.translationValues(0, 40, 0),
                child: SvgPicture.asset("asset/Group.svg"),
              ),
              Container(
                  transform: Matrix4.translationValues(0, 360, 0),
                  child: Column(
                    children: [
                      Text(
                        "We are what we do",
                        style: HeadingText.copyWith(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Thousand of people are usign silent moon \n for smalls meditation ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: kLightText),
                      ),
                    ],
                  )),
              Container(
                transform: Matrix4.translationValues(0, -150, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'asset/image/svgfile.svg',
                      height: 32,
                      width: 33,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            transform: Matrix4.translationValues(0, 180, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: MaterialButton(
                height: 63,
            minWidth: 373,
                color: kBackgroundColor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SignupScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 16),
                  child: Text(
                    'SIGN UP',style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
         // Container(
         //      transform: Matrix4.translationValues(0, 180, 0),
         //      child: GestureDetector(
         //        onTap: () {
         //          Navigator.push(context, MaterialPageRoute(builder: (_) => SignupScreen()));
         //        },
         //        child: Text(
         //          'SIGN UP',
         //          style: TextStyle(color: ButtonTextColor),
         //        ),
         //      ),
         //      alignment: Alignment.center,
         //      decoration: BoxDecoration(
         //          borderRadius: BorderRadius.circular(25.0),
         //          color: Color(0xFF8E97FD)),
         //      height: 47.0,
         //      width: MediaQuery.of(context).size.width * 0.8,
         //    ),
          Container(
            transform: Matrix4.translationValues(65, 205, 0),
            child: Row(
              children: [
                Text(
                  "ALREADY HAVE AN ACCOUNT?",
                  style: TextStyle(color: kLightText),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Text(
                    "  LOG IN",
                    style: TextStyle(color: kBackgroundColor),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
