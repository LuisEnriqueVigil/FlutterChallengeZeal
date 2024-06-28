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
        height: 200,
        width: 180,
        decoration: BoxDecoration(
          color: ColorApp.colorBackgroundButton,
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Column(
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
