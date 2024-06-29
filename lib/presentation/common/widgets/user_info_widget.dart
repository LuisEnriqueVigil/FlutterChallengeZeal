import 'package:challenge_app/domain/model/user_model.dart';
import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:challenge_app/presentation/pages/edit_user/controller/edit_user_controller.dart';
import 'package:challenge_app/presentation/pages/list_user/controller/list_user_controller.dart';
import 'package:challenge_app/presentation/pages/list_user/widgets/bottom_action_bottom_sheet_widget.dart';
import 'package:challenge_app/presentation/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoWidget extends StatelessWidget {
  final bool isViewButtonDetail; 
  final String username;
  final String userEmail;
  final UserModel userModel;

  const UserInfoWidget({
    super.key,
    required this.isViewButtonDetail,
    required this.username,
    required this.userEmail,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: ColorApp.colorBackgroundButton,
                borderRadius: BorderRadius.circular(25.0)),
            child: Center(
              child: TextStyleWidget(
                  text: (username.split("")).first,
                  fontWeight: FontWeight.bold,
                  colorText: ColorApp.colorTextOnBackground,
                  fontSize: FontSizeApp.h3FontSize),
            ),
          ),
          const SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleWidget(
                  text: username,
                  fontWeight: FontWeight.normal,
                  colorText: ColorApp.colorTextBody,
                  fontSize: FontSizeApp.h1FontSize),
              SizedBox(
                width: Get.width*0.52,
                child: TextStyleWidget(
                    text: "email: $userEmail",
                    fontWeight: FontWeight.normal,
                    colorText: ColorApp.colorTextBody,
                    fontSize: FontSizeApp.h2FontSize),
              ),
            ],
          ),
          const Spacer(),
          Visibility(
            visible: isViewButtonDetail,
            child: IconButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    padding: const EdgeInsets.all(20.0),
                    height: 200.0,
                    decoration: const BoxDecoration(
                        color: ColorApp.backgroundApp,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10.0))),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleWidget(
                            text: username,
                            fontWeight: FontWeight.normal,
                            colorText: ColorApp.colorTextBody,
                            fontSize: FontSizeApp.h1FontSize),
                        TextStyleWidget(
                            text: "email: $userEmail",
                            fontWeight: FontWeight.normal,
                            colorText: ColorApp.colorTextBody,
                            fontSize: FontSizeApp.h2FontSize),
                        const SizedBox(height: 20.0),
                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            child: GetBuilder<ListOfAllUserController>(
                              builder: (controller) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BottomActionOnBottomSheet(
                                      iconData: Icons.edit,
                                      onTap: () {
                                        Get.back();
                                        EditUserController editUserController = Get.find<EditUserController>();
                                        editUserController.id.value = userModel.id??0;
                                        editUserController.userID.value = userModel.id??0;
                                        editUserController.userName.value = userModel.name??"";
                                        editUserController.lastName.value = userModel.username ??""; 
                                        Get.toNamed(AppRoutes.editUser);

                                      },
                                      titleButton: "Editar",
                                    ),
                                    const SizedBox(width: 50.0),
                                    BottomActionOnBottomSheet(
                                      iconData: Icons.delete_sweep_outlined,
                                      onTap: () async{
                                        Get.back();
                                        bool isDelete = await controller.deleteUser(userModel.id.toString());
                                        controller.listOfUsers.removeWhere((element) => element.id == userModel.id);
                                        controller.update();
                                        if(isDelete){
                                         Get.snackbar(
                                           "Exito", 
                                           backgroundColor:CupertinoColors.activeGreen,
                                           "Usuario eliminado",
                                           duration:const Duration(seconds: 2) 
                                         );
                                        }else{
                                         Get.snackbar(
                                           "Error",
                                           "No se pudo eliminar el usuario...",
                                           duration: const Duration(seconds: 2),
                                           backgroundColor:CupertinoColors.destructiveRed,
                                         );
                                        }
                                      },
                                      titleButton: "Eliminar",
                                    ),
                                  ],
                                );
                              }
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: ColorApp.colorPrincipalApp,
                )),
          )
        ],
      ),
    );
  }
}
