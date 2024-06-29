import 'package:challenge_app/presentation/common/widgets/app_bar_widget.dart';
import 'package:challenge_app/presentation/common/widgets/button_app_widget.dart';
import 'package:challenge_app/presentation/common/widgets/loading_progress_app_widget.dart';
import 'package:challenge_app/presentation/pages/new_user/controller/new_user_controller.dart';
import 'package:challenge_app/presentation/pages/new_user/widgets/input_create_new_user_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewUserPage extends GetWidget<NewUserController> {
  const NewUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKeyNewUser = GlobalKey<FormState>();
    return Scaffold(
      body: GetBuilder<NewUserController>(
        builder: (controller) {
          return (controller.loadingCreateUser.value)?
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
                  const AppBarWidget(titleAppBar: "Crear nuevo usuario"),
                  const SizedBox(height: 20.0),
                  InputCreatNewUserWidget(
                    hintext: "Nombres",
                    onChange: (String value) {
                      controller.name.value = value;
                      controller.update();
                    },
                  ),
                  const SizedBox(height: 25.0),
                  InputCreatNewUserWidget(
                    hintext: "Apellidos",
                    onChange: (String value) {
                      
                      controller.lastname.value = value;
                      controller.update();
                    },
                  ),
                  SizedBox(height: Get.height*0.15),
                  ButtonAppWidget(
                    onTap: ()async{
                     if (!formKeyNewUser.currentState!.validate()) return;
                     debugPrint("username: ${controller.name.value}");
                     debugPrint("lastname: ${controller.lastname.value}");
              
                     controller.isCreateUser.value = await controller.createUser(                    
                       controller.name.value,
                       controller.lastname.value
                     );
              
                     if(controller.isCreateUser.value){
                      Get.snackbar(
                        "Exito", 
                        backgroundColor:CupertinoColors.activeGreen,
                        "Usuario creado correctamente",
                        duration:const Duration(seconds: 2) 
                      );
                     }else{
                      Get.snackbar(
                        "Error",
                        "No se pudo crear el usuario...",
                        duration: const Duration(seconds: 2),
                        backgroundColor:CupertinoColors.destructiveRed,
                      );
                     }
                    },
                    titleButton: "Crear",
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

