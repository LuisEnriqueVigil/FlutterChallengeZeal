import 'package:challenge_app/presentation/pages/list_user/controller/list_user_controller.dart';
import 'package:get/instance_manager.dart';

class ListAllOfUsersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => ListOfAllUserController());
  }
}