
import 'dart:convert';

import 'package:get/get.dart';
import 'package:meditation_app/Getx/model/ShopXModel.dart';
import 'package:meditation_app/Getx/apiService.dart';
import 'package:http/http.dart'as http;
class ProductController extends GetxController{

  var listitem = List<Product>().obs;



  @override
  void onInit() {
    // TODO: implement onInit
    fetchingData();
  }
   Future <List<Product>> fetchingData() async{
    final apiService = Uri.parse("http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline");
    final  response = await http.get(apiService);
    List<Product> allProduct = [];
    List body = json.decode(response.body);
    body.forEach((product) {
      allProduct.add(Product.fromJson(product));
    });
    print(response.statusCode);
    print(response.body);
    return allProduct;

  }



  // Future fetchingData() async {
  //   final allproduct = Uri.parse("");
  //   final response = await http.get(allproduct);
  //   print(response.statusCode);
  //   print(response.body);
  //   return json.decode(response.body);
  // }


}