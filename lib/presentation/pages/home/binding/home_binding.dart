import 'package:challenge_app/presentation/pages/home/controller/home_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => HomeController());
  }
}