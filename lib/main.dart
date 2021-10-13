import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meditation_app/Getx/Atiq%20getx/View/Shopping_page.dart';
import 'package:meditation_app/Getx/Screens/ApiIntegration.dart';
import 'package:meditation_app/Getx/Screens/loginScreen.dart';
import 'package:meditation_app/Getx/Screens/Getx.dart';
import 'package:meditation_app/Screens/CourseTopic.dart';
import 'package:meditation_app/Screens/SelectScreen.dart';
import 'package:meditation_app/Screens/LoginScreen.dart';
import 'package:meditation_app/Screens/Reminder.dart';
import 'package:meditation_app/Screens/SignUp.dart';
import 'package:meditation_app/Screens/Sleep/Music.dart';
import 'package:meditation_app/Screens/Sleep/Sleep.dart';
import 'package:meditation_app/Screens/Sleep/WellcomeSleep.dart';
import 'package:meditation_app/Screens/splashScreen.dart';
import 'package:get/get.dart';
import 'package:meditation_app/Getx/View/GetxApi.dart';

 void main() async{
 GetStorage.init();
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

