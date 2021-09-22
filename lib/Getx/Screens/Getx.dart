import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/Getx/Screens/AllCategory.dart';
import 'package:meditation_app/Getx/model/getController.dart';
import 'package:meditation_app/Getx/Screens/shop%20screen.dart';


class Getx extends StatelessWidget {
  GetController controller = Get.put(GetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Getx"
        ),


      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              SizedBox(
                height: 30,
              ),

              
              GetBuilder<GetController>(
                id: "follow",
                  builder: (_){
                print("follower wigdet");
                return Text(" ${controller.followers}");
              }),



              // GetX<GetController>(
              //   // id: "status_widget",
              //     builder: (_){
              //   print("Status wigdet");
              //   return Text("user status is ${controller.status}");
              // }),

            Obx((){
              print("Status wigdet");
              return Text("user status is ${controller.status}");
            }),



              RaisedButton(
                  child: Text('logOut'),
                  onPressed: () async{
                    controller.updateSatus('offline');
                  }),
              SizedBox(
                height: 30,
              ),
              MaterialButton(

                onPressed: (){
                  Get.snackbar("snack bar", "second time work in get x", colorText: Colors.yellowAccent,
                      backgroundColor: Colors.black,
                    snackPosition: SnackPosition.BOTTOM,



    );
                },
                child: Text(
                  "SnackBar"
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
              MaterialButton(
                color: Colors.green,
                onPressed: (){
                  Get.to(shopScreen(),arguments: "Flutter applist");
                },
                child: Text(
                  "Shop page"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
