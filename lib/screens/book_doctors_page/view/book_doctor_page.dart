import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/ui_sizes.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/caption_with_icon.dart';
import 'package:yu_health/custom_widgets/my_app_bar.dart';
import 'package:yu_health/custom_widgets/profile_picture_large.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

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
          children: [
            const MyAppBar(
              title: 'Consult',
              showBackButton: true,
              actionButtons: [],
              margin: EdgeInsets.symmetric(
                vertical: globalPagePaddingY,
                horizontal: appBarMarginX,
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: globalInnerScreenPaddingX),
                shrinkWrap: true,
                children: [
                  heightspace(10),
                  //& Profile Picture
                  const ProfilePictureLarge(
                    isEditable: false,
                    imageURL:
                        'https://thumbs.dreamstime.com/b/indian-mature-doctor-drawing-sketching-25181062.jpg',
                    height: 200,
                    width: 200,
                  ),

                  //& Details Section
                  heightspace(30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyHeading(
                        text: 'Dr. Rakesh Varma',
                        size: TextSizes.h4,
                      ),
                      MyLabel(
                        text: 'Cardiology Specialist (MBBS, MD)',
                        color: theme.onBackground.withOpacity(0.75),
                        size: TextSizes.b2,
                      ),

                      // Availability Indicators
                      //& Contact Options
                      heightspace(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: MyPrimaryButtonWithIcon(
                              icon: const Icon(
                                Icons.video_call,
                                size: 25,
                              ),
                              label: 'Live',
                              onPressed: () {},
                            ),
                          ),
                          widthspace(5),
                          const Expanded(
                            child: MySecondaryButtonWithIcon(
                              icon: Icon(
                                Icons.meeting_room,
                                size: 25,
                              ),
                              label: 'Book',
                              onPressed: null,
                            ),
                          ),
                        ],
                      ),
                      heightspace(20),
                      //& Currently pending approintments
                      MyLabel(
                        text: 'You have no pending appointments with this doctor.',
                        size: TextSizes.b1,
                      ),
                      heightspace(10),
                      const Divider(),
                      heightspace(10),
                      //& Additional details
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: CaptionWithIcon(
                              text: '989-675-6705',
                              icon: Icons.phone,
                            ),
                          ),
                          Expanded(
                            child: CaptionWithIcon(
                              text: 'Aster MIMS Beach Road Kozhikode',
                              icon: Icons.location_pin,
                            ),
                          ),
                        ],
                      ),
                    ],
                    //
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
