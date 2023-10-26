import 'package:flutter/material.dart';
import 'package:yu_health/config/theme.dart';
import 'package:yu_health/l10n/l10n.dart';
// import 'package:yu_health/login_page/view/login_page.dart';
import 'package:yu_health/screens/splash_page/view/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SplashScreen(),
    );
  }
}
