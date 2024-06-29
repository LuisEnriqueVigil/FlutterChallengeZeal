import 'package:challenge_app/presentation/common/widgets/app_bar_widget.dart';
import 'package:challenge_app/presentation/common/widgets/button_app_widget.dart';
import 'package:challenge_app/presentation/common/widgets/loading_progress_app_widget.dart';
import 'package:challenge_app/presentation/pages/edit_user/controller/edit_user_controller.dart';
import 'package:challenge_app/presentation/pages/new_user/widgets/input_create_new_user_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditUserPage extends GetWidget<EditUserController> {
  const EditUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKeyNewUser = GlobalKey<FormState>();
    return Scaffold(
      body: GetBuilder<EditUserController>(
        builder: (controller) {
          return (controller.loadingEditUser.value)?
          const LoadingProgressAppWidget()
          :
          SingleChildScrollView(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formKeyNewUser,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarWidget(titleAppBar: "Editar usuario"),
                  const SizedBox(height: 20.0),
                  InputCreatNewUserWidget(
                    hintext: "Nombres",
                    isFromEdit: true,
                    initValue: controller.userName.value,
                    onChange: (String value) {
                      controller.userName.value = value;
                      controller.update();
                    },
                  ),
                  const SizedBox(height: 25.0),
                  InputCreatNewUserWidget(
                    hintext: "Apellidos",
                    initValue: controller.lastName.value,
                    isFromEdit: true,
                    onChange: (String value) {                      
                      controller.lastName.value = value;
                      controller.update();
                    },
                  ),
                  SizedBox(height: Get.height*0.15),
                  ButtonAppWidget(
                    onTap: ()async{
                     if (!formKeyNewUser.currentState!.validate()) return;
                     debugPrint("username: ${controller.userName.value}");
                     debugPrint("lastname: ${controller.lastName.value}");
              
                     bool isUpdate = await controller.editUserOnPage(                    
                       controller.userName.value,
                       controller.lastName.value,
                       controller.userID.value,
                       controller.id.value
                     );
              
                     if(isUpdate){
                      Get.snackbar(
                        "Exito", 
                        backgroundColor:CupertinoColors.activeGreen,
                        "Usuario editado",
                        duration:const Duration(seconds: 2) 
                      );
                     }else{
                      Get.snackbar(
                        "Error",
                        "No se pudo editar el usuario...",
                        duration: const Duration(seconds: 2),
                        backgroundColor:CupertinoColors.destructiveRed,
                      );
                     }
                    },
                    titleButton: "Editar",
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}

