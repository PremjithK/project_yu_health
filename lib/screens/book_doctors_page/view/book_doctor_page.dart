import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/my_app_bar.dart';
import 'package:yu_health/custom_widgets/profile_picture_large.dart';
import 'package:yu_health/custom_widgets/spacing.dart';

class BookDoctorPage extends StatefulWidget {
  const BookDoctorPage({
    super.key,
  });

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const MyAppBar(
                title: 'Consult this doctor',
                showBackButton: true,
                actionButtons: [],
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    //? Body
                    // Profile Picture section
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: theme.onBackground.withOpacity(0.25),
                              blurRadius: 10,
                            ),
                          ],
                          // border: Border.all(
                          //   color: theme.onBackground.withOpacity(0.25),
                          // ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const ProfilePictureLarge(
                          isEditable: false,
                          imageURL:
                              'https://thumbs.dreamstime.com/b/indian-mature-doctor-drawing-sketching-25181062.jpg',
                          height: 300,
                          width: double.infinity,
                          primaryText: 'Dr. Rakesh Kumar',
                          secondaryText: 'ENT, GEN',
                        ),
                      ),
                    ),

                    //& Details
                  ],
                ),
              ),
              //& Bottom Bar
              //? Need to show/hide the buttons based on the doctor's availability status
              heightspace(10),
              //const Divider(),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  widthspace(10),
                  MyPrimaryButtonWithIcon(
                    icon: const Icon(
                      Icons.phone,
                      size: 25,
                    ),
                    label: 'Call',
                    onPressed: () {},
                  ),
                  widthspace(10),
                  const MyPrimaryButtonWithIcon(
                    icon: Icon(
                      Icons.meeting_room,
                      size: 25,
                    ),
                    label: 'Book',
                    onPressed: null,
                  ),
                ],
              ),
              heightspace(10),
            ],
          ),
        ),
      ),
    );
  }
}
