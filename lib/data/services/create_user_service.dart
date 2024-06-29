
import 'package:challenge_app/domain/env/envioroment.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreateUserService{

    Future<bool> createUser (String username, String lastname, int userId) async{

    //try {
       final url = Uri.https( EnviromentApp.baseurl, "/users");
       final data = {
          "userId":userId.toString(),
          "title":username,
          "body":lastname,
          
       };
       final resp = await http.post(
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
     //s} 
   //catch (e) {
    //  return false;
   //}
    
  }
 }