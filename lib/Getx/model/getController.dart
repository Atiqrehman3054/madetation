import 'package:get/get.dart';


class GetController extends GetxController{

  var status = "online".obs;
  var followers = 50.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    // ever(status, (_){
    //   print("status value change");
    //
    // });


    // everAll([status,followers], (_){
    //   print("both value are change");
    // });


    once(status, (_){
      print("print onece time");
    });
    super.onInit();
  }


  void updateSatus(newStatus){
    status.value = newStatus;

    // update(["status_widget"]);
  }


}