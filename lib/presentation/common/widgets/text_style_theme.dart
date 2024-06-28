import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color colorText;
  final double fontSize;

  const TextStyleWidget({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.colorText,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: colorText
      ),
    );
  }
}
