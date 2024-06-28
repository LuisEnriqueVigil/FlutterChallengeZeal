import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:challenge_app/presentation/common/Theme/font_size_theme.dart';
import 'package:challenge_app/presentation/common/widgets/text_style_theme.dart';
import 'package:flutter/material.dart';

class BottomActionOnBottomSheet extends StatelessWidget {
  final String titleButton;
  final VoidCallback onTap;
  final IconData iconData;
  const BottomActionOnBottomSheet({
    super.key,
    required this.titleButton,
    required this.onTap,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(25.0)),
            child: Icon(
              iconData,
              size: 25.0,
            ),
          ),
          const SizedBox(height: 5.0),
          TextStyleWidget(
              text: titleButton,
              fontWeight: FontWeight.normal,
              colorText: ColorApp.colorTextBody,
              fontSize: FontSizeApp.h2FontSize)
        ],
      ),
    );
  }
}
