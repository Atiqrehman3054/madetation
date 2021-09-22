
import 'package:get/get.dart';
import 'package:meditation_app/Getx/Atiq%20getx/model/Productmodel.dart';

class ProductController extends GetxController{

  var products = List<Product>().obs;

  @override

  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Fetchdata();
  }
Fetchdata() async{
        await Future.delayed(Duration(seconds: 1));
    var ProductReuslt = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];

 products.value = ProductReuslt;
}

}