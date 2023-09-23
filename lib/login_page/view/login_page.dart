import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text_fields.dart';
import 'package:yu_health/custom_widgets/text_types.dart';
import 'package:yu_health/signup_page/view/signup_page.dart';
import 'package:yu_health/user_dashboard_page/view/user_dashboard_page.dart';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.background,
      body: Column(
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
                        const MainHeading(
                          text: 'Login to Yu',
                          weight: FontWeight.w700,
                          letterSpacing: -1,
                        ),
                        heightspace(60),
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
                          onChanged: (value) {
                            print(value);
                          },
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
                            Get.to(UserDashboardPage());
                          },
                        ),
                        heightspace(20),
                        //primaryButton('LOGIN', (), context),
                        MyPrimaryButton(
                          label: 'Log In',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print('All Valid!');
                            }
                          },
                        ),
                        heightspace(5),
                        MySecondaryButton(
                          label: 'Create an account',
                          onPressed: () {
                            Get.to(SignupPage());
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
    );
  }
}
