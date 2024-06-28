
import 'package:challenge_app/domain/env/envioroment.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteUserService{

    Future<bool> deleteUser (String idDelete) async{

    //try {
       final url = Uri.https( EnviromentApp.baseurl, "/users/$idDelete");
    
       final resp = await http.delete(
          url,
          headers: {
            "Content-Type": "application/json",
          },
       ).timeout(
          const Duration(seconds: 8),
          onTimeout: (){
           return http.Response("Error",408);
          }
        ); 
       debugPrint("response delete: ${resp.body} and code ${resp.statusCode}");
       if (resp.statusCode == 200) {
        return true;
       }
       else{
        return false;
       }
     } 
   //catch (e) {
  // //  return false;
   //}
    
  //}
 }