import 'package:challenge_app/presentation/pages/new_user/controller/new_user_controller.dart';
import 'package:get/instance_manager.dart';

class NewUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => NewUserController());
  }
}