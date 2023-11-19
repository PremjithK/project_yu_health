import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/theme.dart';

// Common features
String font = primaryFont;
double fontSize = 14;
double elevatedButtonPadding = 8;
double elev = 0;
double borderWidth = 1;
double mainBorderRadius = 60;
double elevatedButtonLetterSpacing = 0.1;

//! Text Button
class MyTextButton extends StatelessWidget {
  const MyTextButton({
    //Required
    required this.label,
    required this.onPressed,
    super.key,
    //Optional
    this.width = 100,
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
          fontFamily: primaryFont,
          fontWeight: FontWeight.w600,
          fontSize: TextSizes.b3,
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
    this.width,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final double? width;
  // Customized Build Method
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.25),
            blurRadius: 5,
            offset: const Offset(-2, 2),
          ),
        ],
      ),
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          textStyle: TextStyle(
            fontFamily: font,
            fontWeight: FontWeight.w800,
            fontSize: fontSize,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          padding: EdgeInsets.all(elevatedButtonPadding),
          elevation: elev,
          shape: RoundedRectangleBorder(
            // side: BorderSide(
            //   color: Theme.of(context).colorScheme.onPrimary,
            // ),
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
    this.width,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final double? width;
  // Customized Build Method
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.075),
            blurRadius: 3,
            offset: const Offset(-2, 1),
          ),
        ],
      ),
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onBackground,
          textStyle: TextStyle(
            fontFamily: font,
            fontWeight: FontWeight.w800,
            fontSize: fontSize,
            letterSpacing: elevatedButtonLetterSpacing,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          padding: EdgeInsets.all(elevatedButtonPadding),
          elevation: elev,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: borderWidth,
              color: Theme.of(context).colorScheme.outline.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(mainBorderRadius),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}

class MyPrimaryButtonWithIcon extends StatelessWidget {
  const MyPrimaryButtonWithIcon({
    //Required
    required this.icon,
    required this.label,
    this.onPressed,
    // Optional
    super.key,
  });
  final Widget icon;
  final void Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.15),
            offset: const Offset(-2, 1),
            blurRadius: 5,
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(label),
        style: TextButton.styleFrom(
          disabledForegroundColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.75),
          disabledBackgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          textStyle: TextStyle(
            fontFamily: font,
            fontWeight: FontWeight.w800,
            fontSize: fontSize,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: elev,
          shape: RoundedRectangleBorder(
            //side: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(mainBorderRadius),
          ),
        ),
      ),
    );
  }
}

class MySecondaryButtonWithIcon extends StatelessWidget {
  const MySecondaryButtonWithIcon({
    //Required
    required this.icon,
    required this.label,
    required this.onPressed,
    // Optional
    super.key,
  });
  final Widget icon;
  final void Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.075),
            blurRadius: 3,
            offset: const Offset(-3, 2),
          )
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(label),
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onBackground,
          textStyle: TextStyle(
            fontFamily: font,
            fontWeight: FontWeight.w800,
            fontSize: fontSize,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: elev,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.25),
            ),
            borderRadius: BorderRadius.circular(mainBorderRadius),
          ),
        ),
      ),
    );
  }
}
