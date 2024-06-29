import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/widgets/app_bar_widget.dart';
import 'package:challenge_app/presentation/pages/new_user/controller/new_user_controller.dart';
import 'package:challenge_app/presentation/pages/new_user/widgets/input_create_new_user_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewUserPage extends GetWidget<NewUserController> {
  const NewUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarWidget(titleAppBar: "Crear nuevo usuario") ,
          const SizedBox(height: 20.0),
          InputCreatNewUserWidget(
            hintext:"Nombres",
            onChange: (String value){
              
            },
          ),
          const SizedBox(height: 25.0),
          InputCreatNewUserWidget(
            hintext:"Apellidos",
            onChange: (String value){
              
            },
          ),
          const SizedBox(height: 20.0),
          InkWell(
            child: Container(
              
            ),
          )
        ],
      ),
    );
  }
}
