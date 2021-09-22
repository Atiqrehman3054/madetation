import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Getx/Atiq%20getx/Controller/ProductController.dart';
import 'package:meditation_app/Getx/Atiq%20getx/Controller/CartController.dart';
import 'package:get/get.dart';
import 'package:meditation_app/Getx/Screens/Getx.dart';



class ShoppingPage extends StatelessWidget {
 final productController  = Get.put(ProductController());
 final cartController = Get.put(CartController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(

        child: Column(
          children: [
            Expanded(
              child: GetX<ProductController>(

                builder: (Controller) {
                  return ListView.builder(
                    itemCount: Controller.products.length,
                      itemBuilder: (context,index){
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${productController.products[index].productName}",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                        '${productController.products[index].productDescription}'),
                                  ],
                                ),
                                Text('\$${productController.products[index].price}',
                                    style: TextStyle(fontSize: 24)),
                              ],
                            ),
                            RaisedButton(
                              onPressed: () {
                               cartController.addCart(productController.products[index]);
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text('Add to Cart'),
                            ),
                            // Obx(() => IconButton(
                            //   icon: controller.products[index].isFavorite.value
                            //       ? Icon(Icons.check_box_rounded)
                            //       : Icon(Icons
                            //       .check_box_outline_blank_outlined),
                            //   onPressed: () {
                            //     controller.products[index].isFavorite
                            //         .toggle();
                            //   },
                            // ))
                          ],
                        ),
                      ),
                    );

                  });
                }
              ),
            ),
            GetX<CartController>(
                builder: (controller) {
                return Text("Total Amount\$ ${cartController.totalPrice}",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),);
              }
            ),
            SizedBox(
              height: 100,
            ),
          ],

        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,),

        onPressed: (){

        },
        label: GetX<CartController>(

          builder: (controller) {
            return Text(controller.count.toString(),style: TextStyle(color: Colors.white), );
          }
        ),

      ),
    );
  }
}
