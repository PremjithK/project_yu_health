import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/profile_text_fields.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

const String imageURL =
    'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Config
    final theme = Theme.of(context).colorScheme;

    //const Color(0xFF1156CE),
    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyHeading(
                text: 'My Profile',
                size: TextSizes.h3,
                letterSpacing: -0.5,
              ),
              heightspace(25),
              // Profile Picture and change button
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: theme.onBackground,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: theme.onBackground.withOpacity(0.5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        '',
                        height: 200,
                        width: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
