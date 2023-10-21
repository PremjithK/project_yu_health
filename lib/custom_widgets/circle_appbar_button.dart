import 'package:flutter/material.dart';

class CircleAppbarButton extends StatelessWidget {
  const CircleAppbarButton({
    required this.onTap,
    required this.icon,
    this.size = 20,
    super.key,
  });
  final void Function() onTap;
  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    // config
    final theme = Theme.of(context).colorScheme;

    // UI
    return InkWell(
      splashColor: theme.primary,
      highlightColor: theme.primary,
      focusColor: theme.primary,
      borderRadius: BorderRadius.circular(60),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size / 3),
        decoration: BoxDecoration(
          color: theme.background,
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 3,
          //     color: theme.onBackground.withOpacity(0.25),
          //   ),
          // ],
          // border: Border.all(
          //   color: theme.onBackground.withOpacity(0.2),
          // ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: theme.onBackground,
          size: size,
        ),
      ),
    );
  }
}
