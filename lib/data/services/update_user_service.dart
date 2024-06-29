//users/{id}


import 'package:challenge_app/domain/env/envioroment.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpdateUserService{

    Future<bool> updateUser (String username, String lastname, int userId,int id) async{

    try {
       final url = Uri.https( EnviromentApp.baseurl, "/users/$userId");
       final data = {
          "userId":userId.toString(),
          "title":username,
          "body":lastname,
          "id":id.toString()
       };
       final resp = await http.put(
          url,
          body: data,
       ).timeout(
          const Duration(seconds: 8),
          onTimeout: (){
           return http.Response("Error",408);
          }
        ); 
       debugPrint("response delete: ${resp.body} and code ${resp.statusCode}");
       if (resp.statusCode == 201) {
        return true;
       }
       else{
        return false;
       }
     } 
   catch (e) {
    return false;
   }
    
  }
 }