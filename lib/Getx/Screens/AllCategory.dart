import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Getx/ApiService/ApiService.dart';
import 'package:meditation_app/Getx/Screens/CategoryProduct.dart';


class AllCategroy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("categroy"),

      ),
      body: FutureBuilder(
        future: ApiService().getAllCategory(),
        builder: (context,AsyncSnapshot snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (context, index){

                return InkWell(
                  onTap: (){

                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Product(snapshot.data[index])));

                  },
                  child: Card(
                    elevation: 1,
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Container(
                      padding: EdgeInsets.all(40),

                      child: Center(
                        child: Text(snapshot.data[index].toString()),
                      ),
                    ),
                  ),
                );

                });
          }
return Center(child: CircularProgressIndicator(),);
        }
      ),
    );
  }
}
