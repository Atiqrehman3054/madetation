import 'package:flutter/material.dart';
import 'package:meditation_app/Getx/ApiService/ApiService.dart';

import 'package:get/get.dart';
import 'package:meditation_app/Getx/Screens/ApiIntegration.dart';
import 'package:meditation_app/constants.dart';
class LoginScreenApi extends StatelessWidget{

  TextEditingController namecontroller = TextEditingController(text:"mor_2314");
  TextEditingController passwordcontroller = TextEditingController(text:"83r5^_");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login Screen"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: TextEditingController(text: "mor_2314"),
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),



              ),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller: TextEditingController(text: "83r5^_"),
              decoration: InputDecoration(
                labelText: "password",
                border: OutlineInputBorder(),



              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: () async{
           final token =    await ApiService().postRequst(namecontroller.text, passwordcontroller.text);

           if(token["token"]!=null){
             Get.snackbar("Correct Address","Sucess your token id is ${token["token"]}",backgroundColor: Colors.green);
             Future.delayed(Duration(seconds: 2),(){
               Get.to(ApiIntgeration());
             });


           }else
             Get.snackbar("wRong Email Address","correct user name oR password",backgroundColor: Colors.red);


              },
              child: Text("Login"),),
            )

          ],
        ),
      ),
    );
  }
}
