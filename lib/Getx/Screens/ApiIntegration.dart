import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Getx/ApiService/ApiService.dart';
import 'package:meditation_app/Getx/Screens/Singleproduct.dart';
import 'package:meditation_app/Getx/Screens/CartPage.dart';



import 'AllCategory.dart';

class ApiIntgeration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("api calling"),
        actions: [

          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AllCategroy()));
              // handle the press
            },
          ),
          IconButton(
            icon: Icon(Icons.add_shopping_cart_outlined),
            tooltip: 'Adding shoping cart',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));
              // handle the press
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: ApiService().allproducts(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: ListTile(
                      title: Text(snapshot.data[index]['title']),
                      leading: Image.network(
                        snapshot.data[index]["image"],
                        height: 50,
                        width: 50,
                      ),
                      subtitle: Text("Price-\$" +
                          snapshot.data[index]["price"].toString()),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SingleProduct(snapshot.data[index]["id"])));
                      },
                    ),
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
