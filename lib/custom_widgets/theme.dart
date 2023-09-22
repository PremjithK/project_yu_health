// import 'package:flutter/material.dart';

// //! LIGHT MODE
// //& Background
// const lightBG = Color(0xfffefbff);
// const lightOnBG = Color(0xff001f25);

// //& on Background

// //& Primary
// const lightPrimary = Color(0xFF3268E2);
// const lightOnPrimary = Color(0xffffffff);
// //& Secondary
// const lightSecondary = Color(0xff6b46bf);
// const lightOnSecondary = Color(0xffffffff);
// const lightSecondaryContainer = Color(0xffe9ddff);
// const lightOnSecondaryContainer = Color(0xff23005c);

// //& Container
// const lightPrimaryContainer = Color(0xffdae2ff);
// const lightOnPrimaryContainer = Color(0xff001848);

// //& Surface
// const lightSurface = Color(0xfff8fdff);
// const lightOnSurface = Color(0xff001f25);

// const lightSurfaceVariant = Color(0xffe1e2ec);
// const lightOnSurfaceVariant = Color(0xff45464f);

// //& Outline
// const lightOutline = Color(0xff757780);

// //!----------------

// // Alert Colors
// const imperialRed = Color.fromARGB(255, 255, 31, 72);
// const aquaMarine = Color.fromRGBO(27, 218, 170, 1);

// //THEMES
// //*LIGHT THEME
// ThemeData lightTheme = ThemeData(
//   fontFamily: mainFontFamily,
//   brightness: Brightness.light,

//   //? TEXT THEME
//   //Title and Heading text colors
//   textTheme: const TextTheme(
//     displayLarge: TextStyle(
//       fontFamily: titleFontFamily,
//       fontSize: 45,
//       color: lightOnBG,
//     ),
//     displayMedium: TextStyle(
//       fontFamily: mainFontFamily,
//       fontSize: 35,
//       color: Color.fromRGBO(50, 104, 226, 1),
//     ),
//     displaySmall: TextStyle(
//       fontFamily: mainFontFamily,
//       fontSize: 25,
//       color: Color.fromRGBO(50, 104, 226, 1),
//     ),
//   ),

//   //UI Scheme
//   colorScheme: ColorScheme.light(
//     //Background
//     background: lightBG,
//     onBackground: lightOnBG,

//     primary: lightPrimary,
//     //^ onPrimary: onPrimary,

//     primaryContainer: lightPrimaryContainer,
//     onPrimaryContainer: lightOnPrimaryContainer,

//     surface: lightSurface,
//     onSurface: lightOnSurface,

//     secondary: lightSecondary,
//     onSecondary: lightOnSecondary,

//     secondaryContainer: lightSecondaryContainer,
//     onSecondaryContainer: lightOnSecondaryContainer,

//     inversePrimary: Colors.white,

//     //Lines
//     outline: lightOutline,

//     outlineVariant: const Color.fromRGBO(19, 19, 22, 0.25),
//     // Drop Shadow Color
//     shadow: Colors.black.withOpacity(0.25),
//     //Text
//     tertiary: const Color.fromRGBO(68, 68, 75, 1),
//   ),
// );

// //! DARK THEME
// //!--------------

// ThemeData darkTheme = ThemeData(
//   //? TEXT THEME
//   //Title and Heading text colors
//   textTheme: TextTheme(
//     displayLarge: TextStyle(
//       fontFamily: titleFontFamily,
//       fontSize: 45,
//       color: Colors.white.withOpacity(0.75),
//     ),
//     displayMedium: const TextStyle(
//       fontFamily: mainFontFamily,
//       fontSize: 35,
//       color: Color.fromRGBO(50, 104, 226, 1),
//     ),
//     displaySmall: const TextStyle(
//       fontFamily: mainFontFamily,
//       fontSize: 25,
//       color: Color.fromRGBO(50, 104, 226, 1),
//     ),
//   ),

//   // colorScheme: ColorScheme.dark(
//   //   //Backgrounds
//   //   background: darkModeBG,
//   //   onBackground: Colors.white.withOpacity(0.1),

//   //   // Main Colors
//   //   primary: brandBlueDarkMode,
//   //   secondary: Colors.grey.shade200,
//   //   //Lines
//   //   outline: brandBlueDarkMode,

//   //   outlineVariant: const Color.fromRGBO(19, 19, 22, 0.25),
//   //   // Drop Shadow Color
//   //   shadow: Colors.transparent,
//   //   //Text
//   //   tertiary: const Color.fromRGBO(68, 68, 75, 1),
//   // ),
// );

import 'package:flutter/material.dart';

// // Custom Fonts
const String titleFontFamily = 'Metropolis';
const String mainFontFamily = 'Metropolis';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1156CE),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDAE2FF),
  onPrimaryContainer: Color(0xFF001848),
  secondary: Color(0xFF6646C7),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE7DEFF),
  onSecondaryContainer: Color(0xFF20005F),
  tertiary: Color(0xFF8739B0),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFF6D9FF),
  onTertiaryContainer: Color(0xFF310049),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFEFBFF),
  onBackground: Color(0xFF1B1B1F),
  surface: Color(0xFFFEFBFF),
  onSurface: Color(0xFF1B1B1F),
  surfaceVariant: Color(0xFFE1E2EC),
  onSurfaceVariant: Color(0xFF45464F),
  outline: Color(0xFF757780),
  onInverseSurface: Color(0xFFF2F0F4),
  inverseSurface: Color(0xFF303034),
  inversePrimary: Color(0xFFB2C5FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF1156CE),
  outlineVariant: Color(0xFFC5C6D0),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFB2C5FF),
  onPrimary: Color(0xFF002B74),
  primaryContainer: Color(0xFF0040A2),
  onPrimaryContainer: Color(0xFFDAE2FF),
  secondary: Color(0xFFCDBDFF),
  onSecondary: Color(0xFF360096),
  secondaryContainer: Color(0xFF4E29AE),
  onSecondaryContainer: Color(0xFFE7DEFF),
  tertiary: Color(0xFFE8B3FF),
  onTertiary: Color(0xFF500075),
  tertiaryContainer: Color(0xFF6D1B96),
  onTertiaryContainer: Color(0xFFF6D9FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1B1B1F),
  onBackground: Color(0xFFE4E2E6),
  surface: Color(0xFF1B1B1F),
  onSurface: Color(0xFFE4E2E6),
  surfaceVariant: Color(0xFF45464F),
  onSurfaceVariant: Color(0xFFC5C6D0),
  outline: Color(0xFF8F909A),
  onInverseSurface: Color(0xFF1B1B1F),
  inverseSurface: Color(0xFFE4E2E6),
  inversePrimary: Color(0xFF1156CE),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB2C5FF),
  outlineVariant: Color(0xFF45464F),
  scrim: Color(0xFF000000),
);

//
ThemeData lightTheme =
    ThemeData.from(colorScheme: lightColorScheme, useMaterial3: true);
ThemeData darkTheme =
    ThemeData.from(colorScheme: darkColorScheme, useMaterial3: true);
