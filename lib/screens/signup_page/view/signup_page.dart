import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/text_fields.dart';
import 'package:yu_health/screens/login_page/view/login_page.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //? Form Controllers
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  //DatePicker
  final TextEditingController _dateController = TextEditingController();
  DateTime? selectedDate;

  final firstDate = DateTime(1900);
  final finalDate = DateTime(3000);

  //^ Date picker function
  Future<void> selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: firstDate,
      lastDate: finalDate,
      fieldHintText: 'dd/mm/yyyy',
      errorFormatText: 'Invalid date format',
      errorInvalidText: 'Invalid date',
    );

    if (picked != null && picked != selectedDate) {
      final formattedDate = DateFormat('dd/MM/yyyy').format(picked);
      setState(() {
        selectedDate = picked;
        _dateController.text = formattedDate;
      });
      print(DateTime.now().year - picked.year);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    // UI
    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                heightspace(60),
                const MyHeading(
                  text: 'Join YuHealth',
                  textAlign: TextAlign.center,
                  letterSpacing: -1,
                ),
                heightspace(30),
                // Name Field
                MyTextFormField(
                  controller: _firstNameController,
                  prefixIcon: const Icon(Icons.person_outline),
                  hint: 'First Name',
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
                  controller: _lastNameController,
                  prefixIcon: const Icon(Icons.person),
                  hint: 'Last Name',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Last Name cannot be blank';
                    } else {
                      return null;
                    }
                  },
                ),
                heightspace(10),
                //!  Date Field With Date Picker on Tap
                Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 3,
                      child: MyDateFormField(
                        // enabled: false,
                        onTap: () => selectDate(context),
                        controller: _dateController,
                        keyboardType: TextInputType.datetime,
                        prefixIcon: const Icon(Icons.edit_calendar_sharp),
                        hint: 'Date Of Birth',
                      ),
                    ),
                    widthspace(5),
                  ],
                ),
                heightspace(10),
                const Divider(),
                heightspace(10),
                MyTextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Invalid email';
                    }
                    return null;
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
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  prefixIcon: const Icon(Icons.phone),
                  hint: 'Phone Number',
                ),
                heightspace(10),
                const Divider(),
                heightspace(10),
                MyTextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Invalid Password';
                    }
                    return null;
                  },
                  prefixIcon: const Icon(Icons.lock_outline),
                  isPassword: true,
                  hint: 'Password',
                ),
                heightspace(10),
                MyTextFormField(
                  controller: _passwordConfirmController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Invalid Password';
                    }
                    return null;
                  },
                  prefixIcon: const Icon(Icons.lock),
                  isPassword: true,
                  hint: 'Confirm Password',
                ),
                heightspace(10),
                heightspace(5),
                // Create account options
                MyPrimaryButton(
                  width: double.infinity,
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

                // Already have account -> login link
                heightspace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyHeading(
                      text: 'Already have an account? ',
                      size: TextSizes.b2,
                      weight: FontWeight.w600,
                    ),
                    GestureDetector(
                      onTap: () => Get.to<Widget>(LoginPage()),
                      child: MyHeading(
                        text: 'Log In',
                        size: TextSizes.b2,
                        color: theme.primary,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                heightspace(35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
