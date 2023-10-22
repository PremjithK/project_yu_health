import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/text_fields.dart';
import 'package:yu_health/screens/home_page/view/home_page.dart';
import 'package:yu_health/screens/signup_page/view/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Form Controllers
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //final deviceHeight = MediaQuery.of(context).size.height;
    // final deviceWidth = MediaQuery.of(context).size.width;

    // UI
    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Form Items
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const MyHeading(
                            text: 'Log In',
                            textAlign: TextAlign.center,
                            letterSpacing: -1,
                          ),
                          heightspace(30),
                          MyTextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Invalid Email';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon: const Icon(Icons.mail),
                            hint: 'Email',
                          ),
                          heightspace(10),
                          MyTextFormField(
                            onChanged: print,
                            controller: _passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                            prefixIcon: const Icon(Icons.lock),
                            isPassword: true,
                            hint: 'Password',
                          ),
                          heightspace(20),
                          MyTextButton(
                            label: 'Forgot Password?',
                            onPressed: () {
                              Get.to<Widget>(const HomePage());
                            },
                          ),
                          heightspace(20),
                          MyPrimaryButton(
                            width: double.infinity,
                            label: 'Log In',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print('All Valid!');
                              }
                            },
                          ),
                          heightspace(5),
                          MySecondaryButton(
                            width: double.infinity,
                            label: 'Create an account',
                            onPressed: () {
                              Get.to<Widget>(const SignupPage());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
