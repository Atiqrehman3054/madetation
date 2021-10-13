import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class Api{

  Future GetxApi() async{
            final apiService = Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json");
            final  response = await http.get(apiService);
            print(response.statusCode);
           print(response.body);
           return json.decode(response.body);


  }

}