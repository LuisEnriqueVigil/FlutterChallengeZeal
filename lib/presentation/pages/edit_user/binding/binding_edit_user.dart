import 'package:challenge_app/presentation/pages/edit_user/controller/edit_user_controller.dart';
import 'package:get/instance_manager.dart';

class EditUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => EditUserController());
  }
}