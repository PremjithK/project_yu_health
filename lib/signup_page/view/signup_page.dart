import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text_fields.dart';
import 'package:yu_health/custom_widgets/text_types.dart';
import 'package:yu_health/login_page/view/login_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  //Form Controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  //Form Controllers

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //final deviceHeight = MediaQuery.of(context).size.height;
    //final deviceWidth = MediaQuery.of(context).size.width;

    // UI
    return Scaffold(
      backgroundColor: theme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        MainHeading(
                          text: 'Sign Up',
                          weight: FontWeight.w800,
                        ),
                        heightspace(30),

                        // Name Field
                        MyTextFormField(
                          controller: _nameController,
                          prefixIcon: const Icon(Icons.person),
                          hint: 'Full Name',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Name cannot be blank';
                            } else {
                              return null;
                            }
                          },
                        ),
                        heightspace(10),
                        MyTextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Invalid email';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: const Icon(Icons.mail),
                          hint: 'Email',
                        ),
                        heightspace(10),
                        MyTextFormField(
                          controller: _phoneController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Invalid Phone Number';
                            }
                          },
                          keyboardType: TextInputType.phone,
                          prefixIcon: const Icon(Icons.phone),
                          hint: 'Phone Number',
                        ),
                        heightspace(10),
                        MyTextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Invalid Password';
                            }
                          },
                          prefixIcon: const Icon(Icons.lock),
                          isPassword: true,
                          hint: 'Password',
                        ),
                        heightspace(10),

                        //primaryButton('LOGIN', (), context),
                        MyPrimaryButton(
                          label: 'Create Account',
                          onPressed: () {
                            if (_formKey.currentState!.validate() == true) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'All Fields Valid!',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            }
                          },
                        ),

                        MyTextButton(
                          label: 'Already have an account?',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<Widget>(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                        ),
                        heightspace(10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
