import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:flutter/material.dart';

class ButtonAppWidget extends StatelessWidget {
  final String titleButton;
  final VoidCallback onTap;
  const ButtonAppWidget({
    required this.onTap,
    required this.titleButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: ColorApp.colorPrincipalApp
        ),
        child: Center(
          child: TextStyleWidget(
              text: titleButton,
              fontWeight: FontWeight.bold,
              colorText: ColorApp.colorTextOnBackground,
              fontSize: FontSizeApp.h1FontSize
          ),
        ),
      ),
    );
  }
}
