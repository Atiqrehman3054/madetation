

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:meditation_app/Getx/Controller/ProductController.dart';
import 'package:get/get.dart';
import 'package:meditation_app/Getx/View/Lipstick.dart';
import 'package:meditation_app/Getx/model/ShopXModel.dart';

class ShopX extends StatelessWidget {
      final product = Get.put(ProductController());
      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
        actions: [
          Icon(Icons.shopping_cart,color: Colors.black,)
        ],

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text("ShopX",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                    ),),
                  ),
                  IconButton(
                    icon: Icon(Icons.list_alt_outlined,color: Colors.black,),
                  ),
                  IconButton(
                    icon: Icon(Icons.grid_view,color: Colors.black,),
                  ),
                ],
              ),
              Container(
                height: 700,
                width: double.infinity,
                child: FutureBuilder(
                   future: ProductController().fetchingData(),
                    builder: (context,AsyncSnapshot snapshot){
                     if(snapshot.hasData){
                       return ListView.builder(
                         itemCount: snapshot.data.length,
                         itemBuilder: (context,index){
                           Product product = snapshot.data[index];
                           return  InkWell(
                             onTap: (){
                               Get.to(()=> LipstickScreen());

                             },
                             child: Card(
                               elevation: 2,
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Stack(
                                       children: [
                                         Container(
                                           height: 180,
                                           width: double.infinity,
                                           clipBehavior: Clip.antiAlias,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(4),
                                           ),
                                           child: Image.network(
                                             product.imageLink,
                                             fit: BoxFit.cover,
                                           ),
                                         ),
                                         // Positioned(
                                         //   right: 0,
                                         //   child: Obx(() =>
                                         //   //     CircleAvatar(
                                         //   //   backgroundColor: Colors.white,
                                         //   //   child: IconButton(
                                         //   //     icon: product.isFavorite.value
                                         //   //         ? Icon(Icons.favorite_rounded)
                                         //   //         : Icon(Icons.favorite_border),
                                         //   //     onPressed: () {
                                         //   //       product.isFavorite.toggle();
                                         //   //     },
                                         //   //   ),
                                         //   // )
                                         //   ),
                                         // )
                                       ],
                                     ),
                                     SizedBox(height: 8),
                                     Text(
                                       product.name,
                                       maxLines: 2,
                                       style:
                                       TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
                                       overflow: TextOverflow.ellipsis,
                                     ),

                                     SizedBox(height: 8),
                                     if (product.rating != null)
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.green,
                                           borderRadius: BorderRadius.circular(12),
                                         ),
                                         padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                         child: Row(
                                           mainAxisSize: MainAxisSize.min,
                                           children: [
                                             Text(
                                               product.rating.toString(),
                                               style: TextStyle(color: Colors.white),
                                             ),
                                             Icon(
                                               Icons.star,
                                               size: 16,
                                               color: Colors.white,
                                             ),
                                           ],
                                         ),
                                       ),
                                     SizedBox(height: 8),
                                     Text('\$${product.price}',
                                         style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
                                   ],
                                 ),
                               ),
                             ),
                           );
                         },

                       );
                       //   Expanded(
                       //   child: StaggeredGridView.countBuilder(
                       //     mainAxisSpacing: 16,
                       //     crossAxisSpacing: 16,
                       //     itemCount: product.productList.length  ,
                       //     crossAxisCount: 2, itemBuilder: (context,index){
                       //     return Container(
                       //       color: Colors.amber,
                       //       height: 100,
                       //       width: 100,
                       //       child: Text("hhhhhh"),
                       //     );
                       //   }, staggeredTileBuilder:(index)=> StaggeredTile.fit(1),),
                       // );






                     }
return CircularProgressIndicator();
                    }),
              ),
              // Expanded(
              //   child: Obx(
              //     ()=> StaggeredGridView.countBuilder(
              //       mainAxisSpacing: 16,
              //       crossAxisSpacing: 16,
              //       itemCount: product.productList.length  ,
              //       crossAxisCount: 2, itemBuilder: (context,index){
              //       return apple(product.productList[index]);
              //
              //     }, staggeredTileBuilder:(index)=> StaggeredTile.fit(1),),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
