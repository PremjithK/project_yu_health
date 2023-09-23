import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/theme.dart';

enum HeadingSize { veryLarge, large, medium }

class MainHeading extends StatelessWidget {
  const MainHeading({
    //Custom
    required this.text,
    this.size = 45,
    this.color,
    this.letterSpacing = 0,
    this.weight = FontWeight.w600,
    super.key,
  });

  final String text;
  final Color? color;
  final FontWeight weight;
  final double letterSpacing;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      key: key,
      style: TextStyle(
        fontSize: size,
        fontFamily: primaryFont,
        letterSpacing: letterSpacing,
        height: 1.1,
        fontWeight: weight,
        color: (color == null)
            ? Theme.of(context).colorScheme.onBackground.withOpacity(0.9)
            : color,
      ),
    );
  }
}
