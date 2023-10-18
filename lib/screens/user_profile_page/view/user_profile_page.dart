import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/profile_picture_large.dart';
import 'package:yu_health/custom_widgets/profile_text_fields.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

const String imageURL =
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1696291200&semt=ais';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Config
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeading(
              text: 'My Profile',
              size: TextSizes.h3,
              letterSpacing: -0.5,
            ),
            heightspace(25),
            // Profile Picture and change button
            const Center(
              child: ProfilePictureLarge(
                isEditable: true,
                imageURL: imageURL,
                height: 275,
                primaryText: 'John Smith Jr.',
                secondaryText: '27-M',
              ),
            ),
            // Information
            heightspace(50),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileTextField(
                  enabled: true,
                  width: double.infinity,
                  label: 'First Name',
                  validator: (value) {},
                  controller: TextEditingController(),
                ),
                heightspace(20),
                ProfileTextField(
                  width: double.infinity,
                  label: 'Last Name',
                  validator: (value) {},
                  controller: TextEditingController(),
                ),
                heightspace(10),
                ProfileTextField(
                  width: double.infinity,
                  label: 'Email Adress',
                  validator: (value) {},
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
                ),
                heightspace(10),
                ProfileTextField(
                  width: double.infinity,
                  label: 'Phone Number',
                  validator: (value) {},
                  controller: TextEditingController(),
                  keyboardType: TextInputType.phone,
                ),
                heightspace(10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
