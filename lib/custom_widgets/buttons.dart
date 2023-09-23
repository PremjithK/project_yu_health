import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/theme.dart';

// Common features
String font = secondaryFont;
double fontSize = 15;
double elevatedButtonPadding = 12;
double elev = 0;
double borderWidth = 1;
double mainBorderRadius = 15;

//! Text Button
class MyTextButton extends StatelessWidget {
  const MyTextButton({
    //Required
    required this.label,
    required this.onPressed,
    super.key,
    //Optional
    this.width = double.infinity,
  });

  final String label;
  final void Function()? onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: key,
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontFamily: secondaryFont,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
    );
  }
}

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    //Required
    required this.label,
    required this.onPressed,
    // Optional
    this.width = double.infinity,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final double? width;
  // Customized Build Method
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          textStyle: TextStyle(
            fontFamily: font,
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          padding: EdgeInsets.all(elevatedButtonPadding),
          elevation: elev,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            borderRadius: BorderRadius.circular(mainBorderRadius),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}

class MySecondaryButton extends StatelessWidget {
  const MySecondaryButton({
    //Required
    required this.label,
    required this.onPressed,
    // Optional
    this.width = double.infinity,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final double? width;
  // Customized Build Method
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onBackground,
          textStyle: TextStyle(
            fontFamily: font,
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          padding: EdgeInsets.all(elevatedButtonPadding),
          elevation: elev,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: borderWidth,
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.circular(mainBorderRadius),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
