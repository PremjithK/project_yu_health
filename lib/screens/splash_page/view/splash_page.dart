import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health/screens/login_page/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 2100),
      () {
        Get.to<Widget>(LoginPage());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Logo2x.png',
              fit: BoxFit.contain,
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
