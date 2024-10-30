import 'package:flutter/material.dart';

class TextCustomWidget extends StatelessWidget {
  const TextCustomWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 16.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
