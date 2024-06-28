import 'package:challenge_app/data/services/get_users_service.dart';
import 'package:challenge_app/domain/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  //Managment get data list users 
  RxBool loadingGetUsers = false.obs; 
  GetUserService getUserService = GetUserService();
  List<UserModel> userList = [];   

  @override
  void onInit()async {
    await getUserOnPage();
    super.onInit();
  }

  Future getUserOnPage ()async{
    loadingGetUsers.value = true;
    update();
    userList = await getUserService.getAllUsers();
    debugPrint("cant of user list: ${userList.length}");
    loadingGetUsers.value = false;
    update();
  }



}