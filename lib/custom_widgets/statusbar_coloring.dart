//&Statusbar
// Get the brightness of the system
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void customStatusBar(BuildContext context, ThemeData theme) {
  final b = MediaQuery.of(context).platformBrightness;

  // Check if the system is in dark mode
  final isDarkMode = b == Brightness.dark;

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
    ),
  );
}
