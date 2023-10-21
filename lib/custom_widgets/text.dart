import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class MyHeading extends StatelessWidget {
  const MyHeading({
    //Custom
    required this.text,
    this.size = 40,
    this.color,
    this.letterSpacing = 0,
    this.weight = FontWeight.w800,
    this.textAlign,
    this.fontFamily,
    this.height,
    super.key,
  });

  final String text;
  final String? fontFamily;
  final Color? color;
  final FontWeight weight;
  final double letterSpacing;
  final double? size;
  final double? height;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      key: key,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        fontFamily: fontFamily ?? primaryFont,
        letterSpacing: letterSpacing,
        height: height ?? 1,
        fontWeight: weight,
        color:
            (color == null) ? Theme.of(context).colorScheme.onBackground.withOpacity(0.9) : color,
      ),
    );
  }
}

class MyLabel extends StatelessWidget {
  const MyLabel({
    required this.text,
    this.letterSpacing,
    this.size = 14,
    this.color,
    this.weight = FontWeight.normal,
    this.maxLines = 2,
    this.fontFamily,
    this.textAlign = TextAlign.left,
    this.height,
    super.key,
  });
  final String text;
  final double size;
  final Color? color;
  final FontWeight weight;
  final double? letterSpacing;
  final int maxLines;
  final TextAlign textAlign;
  final String? fontFamily;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? secondaryFont,
        fontSize: size,
        fontWeight: weight,
        color: color,
        letterSpacing: letterSpacing,
        height: height ?? 1.2,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
