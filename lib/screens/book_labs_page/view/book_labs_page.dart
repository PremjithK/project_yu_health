import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/ui_sizes.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/caption_with_icon.dart';
import 'package:yu_health/custom_widgets/profile_picture_large.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/yu_search_bar.dart';

class BookLabsPage extends StatefulWidget {
  const BookLabsPage({super.key});

  @override
  State<BookLabsPage> createState() => _BookLabsPageState();
}

class _BookLabsPageState extends State<BookLabsPage> {
  final testList = ['CBC', 'THS', 'CT'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Book Lab Tests',
          style: TextStyle(color: theme.onBackground),
        ),
      ),
      backgroundColor: theme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: globalInnerScreenPaddingX),
                shrinkWrap: true,
                children: [
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

                      MyPrimaryButton(
                        label: 'Select Lab Tests',
                        onPressed: () {
                          showDialog<Widget>(
                            useSafeArea: true,
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return Material(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: globalScreenPaddingX,
                                  ),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      heightspace(15),
                                      MyHeading(
                                        text: 'Select Lab Tests',
                                        size: TextSizes.h4,
                                        letterSpacing: -1,
                                      ),
                                      heightspace(10),
                                      MySearchBar(
                                        controller: TextEditingController(),
                                        onChanged: (query) {},
                                      ),
                                      heightspace(10),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: globalInnerScreenPaddingX,
                  vertical: 5,
                ),
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
