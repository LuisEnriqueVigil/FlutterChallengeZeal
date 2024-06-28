import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:challenge_app/presentation/pages/home/controller/home_controller.dart';
import 'package:challenge_app/presentation/pages/list_user/controller/list_user_controller.dart';
import 'package:challenge_app/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RowTitleButtonHomeWidget extends GetWidget<HomeController> {
  const RowTitleButtonHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TextStyleWidget(
            colorText: ColorApp.colorTextBody,
            fontSize: FontSizeApp.h0FontSize,
            fontWeight: FontWeight.bold,
            text: "Usuarios",
          ),
          SizedBox(
            width: Get.width*0.30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TextStyleWidget(
                  colorText: ColorApp.colorTextBody,
                  fontSize: FontSizeApp.h1FontSize,
                  fontWeight: FontWeight.normal,
                  text: "Ver todo", 
                ),
                IconButton(
                  onPressed: (){
                    ListOfAllUserController listOfAllUserController = Get.find<ListOfAllUserController>();
                    listOfAllUserController.listOfUsers = controller.userList;
                    listOfAllUserController.update();
                    Get.toNamed(AppRoutes.listUsers);
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: ColorApp.colorPrincipalApp,
                    size: 15.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
