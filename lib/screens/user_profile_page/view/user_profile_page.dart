import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/ui_sizes.dart';
import 'package:yu_health/custom_widgets/profile_picture_large.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/theme.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: globalScreenPaddingX, vertical: 15),
          children: [
            MyHeading(
              text: 'About Me',
              size: TextSizes.pageTitle,
              letterSpacing: -0.5,
            ),
            heightspace(25),
            //& Profile Picture with Edit button
            const Center(
              child: ProfilePictureLarge(
                isEditable: true,
                imageURL: imageURL,
                width: 250,
                height: 250,
              ),
            ),
            //& User Information
            heightspace(15),
            MyHeading(
              text: 'Dave Smith',
              size: TextSizes.h3,
              fontFamily: secondaryFont,
              letterSpacing: -1,
            ),
            MyLabel(
              text: '30 MALE',
              size: TextSizes.b1,
              letterSpacing: 1,
            ),
          ],
        ),
      ),
    );
  }
}
