import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';

//! Custom Fonts
const String primaryFont = 'Wix';
const String secondaryFont = 'RedHat';
const String monospacedFont = 'OxygenMono';

//& Color Scheme
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
// Text Theme
const myTextTheme = TextTheme(
  labelMedium: TextStyle(
    fontSize: 12,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    fontFamily: primaryFont,
  ),
);

TooltipThemeData tooltipTheme = TooltipThemeData(
  decoration: BoxDecoration(
    color: Colors.grey.shade800,
    borderRadius: BorderRadius.circular(15),
  ),
  textStyle: const TextStyle(
    color: Colors.white,
    fontFamily: primaryFont,
  ),
);

AppBarTheme yuAppBarTheme = AppBarTheme(
  titleTextStyle: TextStyle(
    fontFamily: primaryFont,
    fontSize: TextSizes.h4,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
  ),
  actionsIconTheme: const IconThemeData(
    size: 25,
    weight: 800,
  ),
  iconTheme: const IconThemeData(
    size: 25,
    weight: 800,
  ),
  titleSpacing: 10,
);

InputDecorationTheme inputDecorationThemeLight = InputDecorationTheme(
  prefixIconColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.focused)) {
      return lightColorScheme.primary;
    } else if (states.contains(MaterialState.error))
      return lightColorScheme.error;
    else
      return lightColorScheme.onBackground.withOpacity(0.5);
  }),
);
InputDecorationTheme inputDecorationThemeDark = InputDecorationTheme(
  prefixIconColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.focused)) {
      return darkColorScheme.primary;
    } else if (states.contains(MaterialState.error))
      return darkColorScheme.error;
    else
      return darkColorScheme.onBackground.withOpacity(0.5);
  }),
);

//& Theme Data variables
ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: yuAppBarTheme,
  colorScheme: darkColorScheme,
  textTheme: myTextTheme,
  tooltipTheme: tooltipTheme,
  inputDecorationTheme: inputDecorationThemeLight,
);
ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: yuAppBarTheme,
  colorScheme: lightColorScheme,
  textTheme: myTextTheme,
  tooltipTheme: tooltipTheme,
  inputDecorationTheme: inputDecorationThemeLight,
);
