import 'package:challenge_app/presentation/pages/edit_user/controller/edit_user_controller.dart';
import 'package:challenge_app/presentation/pages/home/controller/home_controller.dart';
import 'package:challenge_app/presentation/pages/list_user/controller/list_user_controller.dart';
import 'package:challenge_app/presentation/pages/new_user/controller/new_user_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings{
  @override
  void dependencies(){
    Get.put(HomeController());
    Get.put(ListOfAllUserController());
    Get.put(NewUserController());
    Get.put(EditUserController());

  }
}