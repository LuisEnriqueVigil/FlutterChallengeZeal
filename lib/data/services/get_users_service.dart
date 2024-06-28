import 'dart:convert';

import 'package:challenge_app/domain/env/envioroment.dart';
import 'package:challenge_app/domain/model/user_model.dart';
import 'package:http/http.dart' as http;

class GetUserService{

    Future<List<UserModel>> getAllUsers () async{

    try {
       final url = Uri.https( EnviromentApp.baseurl, "/users");
    
       final resp = await http.get(
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
       if (resp.statusCode == 200) {
          List<UserModel> list = List<UserModel>.from( jsonDecode(resp.body).map((x) => UserModel.fromJson(x)));
          return list;
       }
       else{
        return[];
       }
     } 
   catch (e) {
     return[];
   }
    
  }
 }