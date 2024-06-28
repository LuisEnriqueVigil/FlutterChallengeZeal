import 'package:challenge_app/domain/model/user_model.dart';
import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:challenge_app/presentation/common/widgets/user_info_widget.dart';
import 'package:challenge_app/presentation/pages/list_user/controller/list_user_controller.dart';
import 'package:challenge_app/presentation/pages/list_user/widgets/bottom_action_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ListOfAllUserPage extends GetWidget<ListOfAllUserController> {
  const ListOfAllUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40.0),
            const TextStyleWidget(
                text: "Todos los usuarios",
                fontWeight: FontWeight.bold,
                colorText: ColorApp.colorTextBody,
                fontSize: FontSizeApp.h0FontSize),
            Expanded(
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return UserInfoWidget(
                      userEmail: "",
                      userModel: UserModel(),
                      username: "",
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}