import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:challenge_app/presentation/pages/home/controller/home_controller.dart';
import 'package:challenge_app/presentation/pages/home/widgets/button_option_on_home_widget.dart';
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
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: const BoxDecoration(
                color: ColorApp.colorPrincipalApp,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10.0))),
            width: double.infinity,
            height: 40.0,
            child: const TextStyleWidget(
              colorText: ColorApp.colorTextOnBackground,
              fontSize: FontSizeApp.h1FontSize,
              fontWeight: FontWeight.bold,
              text: "Hola Luis",
            ),
          ),
          const TextStyleWidget(
            colorText: ColorApp.colorTextBody,
            fontSize: FontSizeApp.h1FontSize,
            fontWeight: FontWeight.bold,
            text: "¿Que deseas hacer hoy?",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonOptionOnHome(
                  iconData: Icons.add_reaction,
                  onTap: (){},
                  titleButton: "Nuevo",
                ),
                ButtonOptionOnHome(
                  iconData: Icons.edit_note_sharp,
                  onTap: (){},
                  titleButton: "Editar",
                ),
                ButtonOptionOnHome(
                  iconData: Icons.delete_sweep_rounded,
                  onTap: (){},
                  titleButton: "Eliminar",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
