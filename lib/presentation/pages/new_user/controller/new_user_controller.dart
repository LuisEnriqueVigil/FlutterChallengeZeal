
import 'package:challenge_app/data/services/create_user_service.dart';
import 'package:challenge_app/domain/model/user_model.dart';
import 'package:get/get.dart';

class NewUserController extends GetxController{

  UserModel newUserForCreate = UserModel();
  CreateUserService createUserService = CreateUserService();

  RxString name = "".obs;
  RxString lastname = "".obs;
  RxInt userIdTemporally = 100.obs;
  RxBool loadingCreateUser = false.obs;
  RxBool isCreateUser = false.obs;

  Future<bool> createUser (
    String username,
    String lastname
  )async{
   loadingCreateUser.value = true;
   userIdTemporally.value = userIdTemporally.value +1;
   update();
   bool isCreate =  await createUserService.createUser(username, lastname, userIdTemporally.value);
   loadingCreateUser.value = false;
   update();
   return isCreate;
  }


}