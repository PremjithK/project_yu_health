import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class MyText extends StatelessWidget {
  const MyText({
    //Custom
    required this.text,
    this.size = 40,
    this.color,
    this.letterSpacing = 0,
    this.weight = FontWeight.w800,
    this.textAlign,
    super.key,
  });

  final String text;
  final Color? color;
  final FontWeight weight;
  final double letterSpacing;
  final double? size;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      key: key,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        fontFamily: primaryFont,
        letterSpacing: letterSpacing,
        height: 1,
        fontWeight: weight,
        color: (color == null)
            ? Theme.of(context).colorScheme.onBackground.withOpacity(0.9)
            : color,
      ),
    );
  }
}

// Common text sizes
class TextSizes {
  // Headings
  static double get h1 => 40;
  static double get h2 => 35;
  static double get h3 => 30;
  static double get h4 => 25;
  static double get h5 => 20;
  static double get h6 => 18;

  // Body
  static double get b1 => 16;
  static double get b2 => 14;
  static double get b3 => 12;
}
