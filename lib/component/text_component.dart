import 'package:flutter/material.dart';
import 'package:word_break_text/word_break_text.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final TextAlign textAlign;
  final WrapAlignment wrapAlignment;
  final double? height;
  const TextComponent({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontFamily,
    this.textAlign = TextAlign.center,
    this.height,
    this.wrapAlignment = WrapAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return WordBreakText(
      text,
      spacing: fontSize != null ? fontSize! / 3 : 4,
      spacingByWrap: true,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontSize: fontSize ?? 24,
        color: color ?? Colors.black87,
        height: height ?? 0,
      ),
      textAlign: textAlign,
      wrapAlignment: wrapAlignment,
    );
  }
}
