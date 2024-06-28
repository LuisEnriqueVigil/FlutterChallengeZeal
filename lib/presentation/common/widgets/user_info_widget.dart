import 'package:challenge_app/domain/model/user_model.dart';
import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:challenge_app/presentation/pages/list_user/widgets/bottom_action_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                width: Get.width*0.60,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BottomActionOnBottomSheet(
                                  iconData: Icons.edit,
                                  onTap: () {},
                                  titleButton: "Editar",
                                ),
                                const SizedBox(width: 50.0),
                                BottomActionOnBottomSheet(
                                  iconData: Icons.delete_sweep_outlined,
                                  onTap: () {},
                                  titleButton: "Eliminar",
                                ),
                              ],
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
