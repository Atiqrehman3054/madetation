import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStorage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  final storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Storage'),
      ),
      
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email"
              ),
              
            ),
            
            MaterialButton(
              child: Text("submit"),
                onPressed: (){
              if(GetUtils.isEmail(emailController.text)){
emailController.text="";
              }else Get.snackbar("incorrect", "please enter a vaild email and password");
            }
            
            
            ),
          ],
        ),
      ),
    );
  }
}
