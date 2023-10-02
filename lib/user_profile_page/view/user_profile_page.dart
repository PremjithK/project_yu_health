import 'package:flutter/material.dart';
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

    //UI
    //const Color(0xFF1156CE),
    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyHeading(
                text: 'Profile',
                size: TextSizes.h3,
                letterSpacing: -0.5,
              ),
              heightspace(25),
              // Profile Picture and change button
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration:
                      BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(15)),
                ),
              ),
              // Information
              heightspace(25),
              const Divider(),
              heightspace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyLabel(
                    text: 'First Name'.toUpperCase(),
                    size: TextSizes.b3,
                    letterSpacing: 1,
                    color: theme.onBackground.withOpacity(0.8),
                  ),
                  MyLabel(
                    text: 'Rudeus',
                    weight: FontWeight.w500,
                    size: TextSizes.h4,
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
