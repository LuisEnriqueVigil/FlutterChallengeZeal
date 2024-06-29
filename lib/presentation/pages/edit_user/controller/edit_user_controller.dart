import 'package:challenge_app/data/services/update_user_service.dart';
import 'package:challenge_app/domain/model/user_model.dart';
import 'package:get/get.dart';

class EditUserController extends GetxController{

  //Managment get data list users 
  UserModel userModelForEdit = UserModel();
  RxBool loadingEditUser = false.obs; 
  UpdateUserService updateUserService = UpdateUserService();
  RxString userName = "".obs;
  RxString lastName = "".obs;
  RxInt userID = 0.obs;
  RxInt id = 0.obs;

  Future<bool> editUserOnPage (
    String userName,
    String lastName,
    int userId, 
    int id,
  )async{
    loadingEditUser.value = true;
    update();
    bool isUpateUser =  await updateUserService.updateUser(
      userName,
      lastName,
      userId,
      id
    );
    loadingEditUser.value = false;
    update();
    return isUpateUser; 
  }
}
