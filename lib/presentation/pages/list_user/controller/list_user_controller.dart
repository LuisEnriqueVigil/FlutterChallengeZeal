import 'package:challenge_app/data/services/delete_user_service.dart';
import 'package:challenge_app/data/services/get_users_service.dart';
import 'package:challenge_app/domain/model/user_model.dart';
import 'package:get/get.dart';

class ListOfAllUserController extends GetxController{

  List<UserModel> listOfUsers = [];
  RxBool loadingDeleteUser = false.obs;
  DeleteUserService deleteUserService = DeleteUserService();
  GetUserService getUserService = GetUserService();
  RxBool isDeleteUser = false.obs;

  Future<bool> deleteUser(String idUser)async{
    loadingDeleteUser.value = true;
    bool isDelete = await deleteUserService.deleteUser(idUser);
    listOfUsers =  await getUserService.getAllUsers();
    loadingDeleteUser.value = false;
    update();
    return isDelete;
  } 


}