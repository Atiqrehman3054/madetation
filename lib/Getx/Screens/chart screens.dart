import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Chart screen"

        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              MaterialButton(


                onPressed: (){
               Get.back();




                },
                child: Text(
                    "backbutton"
                ),
              ),
              MaterialButton(
                color: Colors.green,
                onPressed: (){
                  Get.defaultDialog(
                    title: "off",


                    textCancel: "offf",


                  );


                },
                child: Text(
                    "SnackBar"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
