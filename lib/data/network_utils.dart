import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class NetworkUtiles{

  /// get method for http request
  Future<dynamic> getMethod(String url)async{
    try{
      Uri uri = Uri.parse(url);
      final Response response = await get(uri,headers: {'token' : ''});
      log(response.body);
      if(response.statusCode == 200){
        return jsonDecode(response.body);
      }else{
        log('status code ${response.statusCode}');
      }
    }catch(e){
      log(e.toString());
    }
  }




}