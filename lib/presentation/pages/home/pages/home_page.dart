import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:challenge_app/presentation/common/widgets/user_info_widget.dart';
import 'package:challenge_app/presentation/pages/home/controller/home_controller.dart';
import 'package:challenge_app/presentation/common/widgets/app_bar_widget.dart';
import 'package:challenge_app/presentation/pages/home/widgets/button_option_on_home_widget.dart';
import 'package:challenge_app/presentation/pages/home/widgets/row_title_button_home_widget.dart';
import 'package:challenge_app/presentation/pages/list_user/controller/list_user_controller.dart';
import 'package:challenge_app/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AppBarWidget(
            titleAppBar: "Bienvenido",
          ),
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: TextStyleWidget(
              colorText: ColorApp.colorTextBody,
              fontSize: FontSizeApp.h0FontSize,
              fontWeight: FontWeight.bold,
              text: "¿Que deseas hacer hoy?",
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonOptionOnHome(
                iconData: Icons.add_reaction,
                onTap: (){
                  Get.toNamed(AppRoutes.addNewUser);
                },
                titleButton: "Nuevo",
              ),
              ButtonOptionOnHome(
                iconData: Icons.edit_note_sharp,
                onTap: (){
                  ListOfAllUserController listOfAllUserController = Get.find<ListOfAllUserController>();
                  listOfAllUserController.origin.value = "update";
                  listOfAllUserController.update();                  
                  Get.toNamed(AppRoutes.listUsers);
                },
                titleButton: "Editar",
              ),
              ButtonOptionOnHome(
                iconData: Icons.delete_sweep_rounded,
                onTap: (){
                  ListOfAllUserController listOfAllUserController = Get.find<ListOfAllUserController>();
                    listOfAllUserController.origin.value = "delete";
                    listOfAllUserController.update();
                  Get.toNamed(AppRoutes.listUsers);
                },
                titleButton: "Eliminar",
              )
            ],
          ),
          const SizedBox(height: 20.0),
          const RowTitleButtonHomeWidget(),
          const SizedBox(height: 5.0),
          Expanded(
            child: GetBuilder<HomeController>(
              builder: (controller) { 
                return(controller.loadingGetUsers.value == true)?
                    Center(
                      child: Container(
                      margin: const EdgeInsets.only(
                        top: 40.0
                      ),
                      height: 40.0,width: 40.0,
                      child: const CircularProgressIndicator(
                        color: ColorApp.colorPrincipalApp,
                      ),
                                ),
                    ) 
                  :  
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(
                      top: 0.0
                  ),
                  itemCount: controller.userList.length,
                  itemBuilder: (context,index){
                    return UserInfoWidget(
                      isViewButtonDetail: false,
                      username: controller.userList[index].name??"",
                      userEmail: controller.userList[index].email??"",
                      userModel: controller.userList[index]
                    );
                  }
                );
              }
            )
          )
        ],
      ),
    );
  }
}
