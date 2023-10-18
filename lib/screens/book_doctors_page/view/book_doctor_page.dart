import 'package:flutter/material.dart';
import 'package:yu_health/config/alternateImages.dart';
import 'package:yu_health/custom_widgets/circle_appbar_button.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class BookDoctorPage extends StatefulWidget {
  const BookDoctorPage({super.key});

  @override
  State<BookDoctorPage> createState() => _BookDoctorPageState();
}

class _BookDoctorPageState extends State<BookDoctorPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAppbarButton(
                  icon: Icons.arrow_back_ios_new,
                  onTap: () {},
                ),
                MyHeading(
                  text: 'Contact this doctor',
                  size: TextSizes.h3,
                  letterSpacing: -1,
                ),
              ],
            ),
            // Body

            
          ],
        ),
      ),
    );
  }
}
