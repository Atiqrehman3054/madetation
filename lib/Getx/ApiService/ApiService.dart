import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future allproducts() async {
    final allproduct = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(allproduct);
    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future singleproduct(int id) async {
    final allproduct = Uri.parse("https://fakestoreapi.com/products/$id");
    final response = await http.get(allproduct);
    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future getAllCategory() async {
    final category = Uri.parse("https://fakestoreapi.com/products/categories");
    final response = await http.get(category);
    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future productCategory(String catname) async {
    final productCategory =
        Uri.parse("https://fakestoreapi.com/products/category/$catname");
    final response = await http.get(productCategory);
    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future Cartdata(String id) async {
    final productCategory = Uri.parse("https://fakestoreapi.com/carts/$id");
    final response = await http.get(productCategory);
    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }


  //post request

   Future postRequst(String username,String password)async{
    final Request = Uri.parse("https://fakestoreapi.com/auth/login");
    final response = await http.post(Request,
        body: {
      'username':username,
      'password': password,
    });
    print(response.statusCode);
    print(response.body);

  return json.decode(response.body);
   }

}
