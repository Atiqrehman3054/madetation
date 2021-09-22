import 'package:flutter/material.dart';
import 'package:meditation_app/Getx/ApiService/ApiService.dart';

import 'Singleproduct.dart';



class Product extends StatelessWidget {
  final String id;
  Product(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text(id.toUpperCase()),

       ),

      body: FutureBuilder(
        future: ApiService().productCategory(id),
        builder: (context,AsyncSnapshot snapshot){


          if(snapshot.hasData){
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
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
