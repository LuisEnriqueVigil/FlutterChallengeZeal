import 'package:challenge_app/presentation/common/widgets/app_bar_widget.dart';
import 'package:challenge_app/presentation/common/widgets/loading_progress_app_widget.dart';
import 'package:challenge_app/presentation/common/widgets/user_info_widget.dart';
import 'package:challenge_app/presentation/pages/list_user/controller/list_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListOfAllUserPage extends GetWidget<ListOfAllUserController> {
  const ListOfAllUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      GetBuilder<ListOfAllUserController>(
        builder: (controller) {
          return (controller.loadingDeleteUser.value == true )?          
          const LoadingProgressAppWidget()
          :
      GetBuilder<ListOfAllUserController>(
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               AppBarWidget(
                titleAppBar: (controller.origin.value == "delete")?
                  "Selecciona el que se eliminara"
                  : 
                  (controller.origin.value == "update")?
                  "Selecciona para editar":
                  "Todos los usuarios"
              ),
              Expanded(
                child:  ListView.builder(
                 itemCount: controller.listOfUsers.length,
                 itemBuilder: (context, index) {
                   return UserInfoWidget(
                     isViewButtonDetail: true,
                     userEmail: controller.listOfUsers[index].email??"",
                     userModel: controller.listOfUsers[index],
                     username: controller.listOfUsers[index].name??"",
                   );
                 })
              )
            ],
          );
        }
      );
        }
      ) 
      
    );
  }
}
