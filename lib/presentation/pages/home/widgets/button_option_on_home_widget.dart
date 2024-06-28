import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:flutter/material.dart';


class ButtonOptionOnHome extends StatelessWidget {
  final String titleButton;
  final IconData iconData;
  final VoidCallback onTap;
  const ButtonOptionOnHome({
    super.key,
    required this.titleButton,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10.0
        ),
        height: 100,
        width: 80,
        decoration: BoxDecoration(
          color: ColorApp.colorBackgroundButton,
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 30.0,
              color: ColorApp.colorIconApp,
            ),
            TextStyleWidget(
              colorText: ColorApp.colorTextOnBackground,
              fontSize: FontSizeApp.h2FontSize,
              fontWeight: FontWeight.bold,
              text: titleButton,
            ),
          ],
        ),
      ),
    );
  }
}
