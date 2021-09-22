
import 'package:get/get.dart';
import 'package:meditation_app/Getx/Atiq%20getx/model/Productmodel.dart';

class CartController extends GetxController{

  var cartitem = List<Product>().obs;
   int get count=> cartitem.length;
  double get totalPrice  => cartitem.fold(0.0, (sum, item) => sum+item.price);

  addCart(Product Product){

    cartitem.add(Product);
  }

}





