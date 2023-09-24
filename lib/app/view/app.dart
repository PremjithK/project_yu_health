import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health/custom_widgets/theme.dart';
import 'package:yu_health/l10n/l10n.dart';
import 'package:yu_health/login_page/login_page.dart';
import 'package:yu_health/search_doctors_page/view/search_doctors_page.dart';
// import 'package:yu_health/splash_page/views/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      //themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: SearchDoctorsPage(),
    );
  }
}
