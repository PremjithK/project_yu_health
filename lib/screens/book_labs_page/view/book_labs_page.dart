import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/ui_sizes.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/caption_with_icon.dart';
import 'package:yu_health/custom_widgets/my_app_bar.dart';
import 'package:yu_health/custom_widgets/profile_picture_large.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class BookLabsPage extends StatefulWidget {
  const BookLabsPage({super.key});

  @override
  State<BookLabsPage> createState() => _BookLabsPageState();
}

class _BookLabsPageState extends State<BookLabsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Column(
          children: [
            const MyAppBar(
              title: 'Book Lab Tests',
              showBackButton: true,
              actionButtons: [],
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: appBarMarginX),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: globalInnerScreenPaddingX),
                shrinkWrap: true,
                children: [
                  //? Body
                  heightspace(10),
                  // Profile Picture section
                  const ProfilePictureLarge(
                    isEditable: false,
                    imageURL:
                        'https://thumbs.dreamstime.com/b/indian-mature-doctor-drawing-sketching-25181062.jpg',
                    height: 250,
                    width: double.infinity,
                  ),

                  //& Details Section
                  heightspace(20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyHeading(
                        text: 'BML Limited',
                        size: TextSizes.h4,
                      ),
                      MyLabel(
                        text: 'Scanning and Imaging centre',
                        color: theme.onBackground.withOpacity(0.75),
                        size: TextSizes.b2,
                      ),

                      heightspace(20),

                      // Additional details
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 5,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: const [
                          CaptionWithIcon(
                            text: '295-2910',
                            icon: Icons.phone,
                          ),
                          CaptionWithIcon(
                            text: 'Beach Rd, Calicut',
                            icon: Icons.location_pin,
                          ),
                          CaptionWithIcon(
                            text: 'Opens at 10:00AM',
                            icon: Icons.alarm_add,
                          ),
                          CaptionWithIcon(
                            text: 'Closes at 06:00PM',
                            icon: Icons.alarm_off,
                          ),
                        ],
                      ),

                      // Currently pending approintments
                      const Divider(),
                      heightspace(10),
                      MyLabel(
                        text: 'You have no lab appointments fixed.',
                        size: TextSizes.b1,
                      ),
                      heightspace(10),

                      //& Tests / Scans List
                    ],
                  ),
                  // End of List View
                ],
              ),
            ),

            // Confirm Button
            Container(
              decoration: BoxDecoration(
                color: theme.background,
                boxShadow: [
                  BoxShadow(
                    color: theme.onBackground.withOpacity(0.25),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: globalInnerScreenPaddingX, vertical: 5),
                child: Column(
                  children: [
                    MyLabel(
                      text: 'Appointment planned for 1st November, 12:30PM',
                      size: TextSizes.b2,
                    ),
                    heightspace(5),
                    Row(
                      children: [
                        Expanded(
                          child: MyPrimaryButtonWithIcon(
                            icon: const Icon(
                              Icons.check,
                              size: 25,
                            ),
                            label: 'Fix Appointment',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
