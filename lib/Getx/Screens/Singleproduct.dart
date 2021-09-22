import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Getx/ApiService/ApiService.dart';
import 'package:meditation_app/Getx/Screens/AllCategory.dart';

class SingleProduct extends StatelessWidget {
  final int id;

  SingleProduct(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("single product screens"),
      ),
      body: FutureBuilder(
        future: ApiService().singleproduct(id),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                  Image.network(snapshot.data["image"],height: 200,width: double.infinity,),
                SizedBox(
                  height: 20,
                ),

                Text("\$"+snapshot.data["price"].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),

                Text(snapshot.data["title"],style: TextStyle(fontWeight: FontWeight.bold),),    SizedBox(
                  height: 20,

                ),
 ClipRRect(
   borderRadius: BorderRadius.circular(20),

     child: Text(snapshot.data["category"])),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(snapshot.data["description"]),
                ),
                SizedBox(
                  height: 20,
                ),





              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AllCategroy()));
          },
        child: Icon(Icons.shopping_cart_outlined),

      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
    );
  }
}
