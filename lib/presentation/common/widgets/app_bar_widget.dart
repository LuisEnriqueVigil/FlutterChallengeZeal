import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
            left: 20.0,
            top: 60.0
      ),
      decoration: const BoxDecoration(
          color: ColorApp.colorPrincipalApp,
          borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(20.0))),
      width: double.infinity,
      height: 110.0,
      child: const TextStyleWidget(
        colorText: ColorApp.colorTextOnBackground,
        fontSize:FontSizeApp.h0FontSize,
        fontWeight: FontWeight.bold,
        text: "Hola Usuario",
      ),
    );
  }
}
