import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'splashScreen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _passwordVisible;
  bool _checkbox = false;

  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPagebackgroundcolor,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                transform: Matrix4.translationValues(0, -10, 0),
                child: Image.asset("asset/background.png"),
              ),
            Container(
              alignment: Alignment.topLeft,
                  transform: Matrix4.translationValues(0, 45, 0),
                  child: MaterialButton(onPressed: (){
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("asset/backicon.svg",color: Colors.black,height: 55,width: 55,),)
                ),

              Container(
                alignment: Alignment.center,
                transform: Matrix4.translationValues(0, 125, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Create your account",
                      style: HeadingText.copyWith(
                          color: kTextColor, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset("asset/Vector.svg"),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'CONTINUE WITH FACEBOOK',
                              style: TextStyle(color: ButtonTextColor),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFF8E97FD)),
                        height: 63,
                        width: 373,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 63.0,
                        width: 373,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset("asset/icon.svg"),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'CONTINUE WITH GOOGLE',
                              style: TextStyle(color: kTextColor),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFFEBEAEC),
                            border: Border.all(color: Colors.black38)),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        "OR LOG IN WITH EMAIL",
                        style: TextStyle(
                          color: kLightText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      cursorColor: Colors.black38,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Name',
                        suffixIcon: Icon(Icons.check,color: Colors.green,),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(

                      cursorColor: Colors.black38,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        suffixIcon: Icon(Icons.check,color: Colors.green,),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Email Address',
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      cursorColor: Colors.black38,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      obscureText: !_passwordVisible,
                    )),
                Container(
                  transform: Matrix4.translationValues(0, 24, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account?  ',
                          style: TextStyle(
                            color: kLightText,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Privace Policy',
                              style: TextStyle(
                                  color: kBackgroundColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Checkbox(
                        value: _checkbox,
                        onChanged: (value) {
                          setState(() {
                            _checkbox = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(

                    transform: Matrix4.translationValues(0, 30, 0),

                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: ButtonTextColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: kBackgroundColor),
                    height: 57.0,
                    width: 373,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
