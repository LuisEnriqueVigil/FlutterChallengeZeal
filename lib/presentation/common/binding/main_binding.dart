import 'package:challenge_app/presentation/pages/home/controller/home_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings{
  @override
  void dependencies(){
    Get.put(HomeController());
  }
}