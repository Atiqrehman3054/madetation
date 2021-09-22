import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Getx/ApiService/ApiService.dart';
import 'package:meditation_app/Getx/Screens/CategoryProduct.dart';


class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("categroy"),

      ),
      body: FutureBuilder(
          future: ApiService().Cartdata("1"),
          builder: (context,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              List product = snapshot.data["products"];
              return ListView.builder(
                  itemCount: product.length,
                itemBuilder: (context, index){
                    return FutureBuilder(
                      future: ApiService().singleproduct(product[index]["productId"]),
                        builder:(context,AsyncSnapshot asyncSnapshot){
                           if(asyncSnapshot.hasData){
                             return Padding(
                               padding: const EdgeInsets.symmetric(vertical: 10,),
                               child: ListTile(
                                 title: Text(asyncSnapshot.data["title"]),
                                 leading: Image.network(asyncSnapshot.data["image"]),
                                 subtitle: Text("Quantity "+product[index]["quantity"].toString()),
                                 trailing: IconButton(icon: Icon(Icons.delete), onPressed: (){},color: Colors.red,),
                               ),
                             );
                           }
                           return LinearProgressIndicator();

                    }
                    );
              },
              );
            }
            return Center(child: CircularProgressIndicator(),);
          }
      ),
      bottomNavigationBar: Container(
        height: 60,
        color:  Colors.green,
        width: double.infinity,
        child: Center(
          child: Text("Order Now",style: TextStyle(
            fontWeight: FontWeight.bold,
                color: Colors.white,

                fontSize: 25
          ),),
        ),

      ),
    );
  }
}
