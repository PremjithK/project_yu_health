import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text_fields.dart';
import 'package:yu_health/custom_widgets/text_types.dart';
import 'package:yu_health/user_dashboard_page/view/user_dashboard_page.dart';
import 'package:yu_health/signup_page/view/signup_page.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Form Items
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        MainHeading(
                          text: 'Login to Yu',
                          weight: FontWeight.w800,
                          letterSpacing: -1,
                        ),
                        heightspace(30),
                        MyTextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Invalid Email';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: const Icon(Icons.mail),
                          hint: 'Please enter an email',
                        ),
                        heightspace(10),
                        MyTextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserDashboardPage(),
                                ));
                          },
                        ),
                        heightspace(5),
                        //primaryButton('LOGIN', (), context),
                        MyPrimaryButton(
                          label: 'Log In',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print('All Valid!');
                            }
                          },
                        ),
                        heightspace(10),
                        MySecondaryButton(
                          label: 'Create an account',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ));
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
