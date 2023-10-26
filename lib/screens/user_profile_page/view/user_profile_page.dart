import 'package:flutter/material.dart';
import 'package:yu_health/config/ui_sizes.dart';
import 'package:yu_health/custom_widgets/profile_field.dart';
import 'package:yu_health/custom_widgets/profile_picture_large.dart';
import 'package:yu_health/custom_widgets/spacing.dart';

const String imageURL =
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1696291200&semt=ais';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 2,
        title: Text(
          'My Profile',
          style: TextStyle(color: theme.onBackground),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          widthspace(10),
        ],
      ),
      backgroundColor: theme.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: globalInnerScreenPaddingX,
            vertical: 15,
          ),
          children: [
            //& Profile Picture with Edit button
            const Center(
              child: ProfilePictureLarge(
                isEditable: true,
                imageURL: imageURL,
                width: 200,
                height: 200,
              ),
            ),
            //& User Information
            heightspace(30),
            const Divider(),
            heightspace(10),
            ProfileField(
              onEdit: () => print('Edit Clicked!'),
              value: 'Dave Smith',
            ),
            heightspace(10),
            ProfileField(
              onEdit: () => print('Edit Clicked!'),
              value: 'davesmith@yahoo.com',
            ),
            heightspace(10),
            ProfileField(
              onEdit: () => print('Edit Clicked!'),
              value: '9868656856',
            ),
            heightspace(10),
          ],
        ),
      ),
    );
  }
}
