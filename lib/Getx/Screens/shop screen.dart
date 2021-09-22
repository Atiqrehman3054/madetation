import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/Getx/Screens/chart%20screens.dart';


class shopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
      title: Text(
          "shop"
      ),
    ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(Get.arguments)   ,
              MaterialButton(

                onPressed: (){

Get.off(ChartScreen());

                },
                child: Text(
                    "chart sscreen skip one page"
                ),
              ),
              MaterialButton(

                onPressed: (){
Get.offAll(ChartScreen());
                },
                child: Text(
                    "chart sscreen no return"
                ),
              ),
              MaterialButton(
                color: Colors.green,
                onPressed: (){

                  Get.to(ChartScreen());


                },
                child: Text(
                    "Chart screen"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
