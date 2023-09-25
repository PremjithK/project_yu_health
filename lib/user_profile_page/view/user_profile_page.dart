import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // Config
    final theme = Theme.of(context).colorScheme;
    final deviceHeight = MediaQuery.of(context).size.height;
    const imageURL =
        'https://gcavocats.ca/wp-content/uploads/2018/09/man-avatar-icon-flat-vector-19152370-1.jpg';

    // UI
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightspace(15),
              //? Title Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    splashRadius: 25,
                    style: IconButton.styleFrom(
                      elevation: 0,
                      shape: const CircleBorder(),
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                    ),
                    icon: Icon(
                      Icons.arrow_back,
                      color: theme.primary,
                      size: 28,
                    ),
                  ),
                  widthspace(15),
                  MainHeading(
                    text: 'My Profile',
                    size: TextSizes.h4,
                    weight: FontWeight.bold,
                  ),
                  Spacer(),
                ],
              ),
              heightspace(10),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: [
                    //? User's Info Area
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: theme.onBackground.withOpacity(0.25),
                          ),
                        ),
                        height: 300,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            imageURL,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    //? User's Profile Details
                    heightspace(30),
                    // Full Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainHeading(
                          text: 'Dave Smith',
                          letterSpacing: -0.5,
                          size: TextSizes.h3,
                          weight: FontWeight.bold,
                        ),
                        MainHeading(text: '04-05-1989', size: TextSizes.h5),
                      ],
                    ),

                    // Date of birth with DatePicker
                    // Phone number
                    // Location
                  ],
                ),
              ),
              // End of Options
              heightspace(5),

              MyPrimaryButtonWithIcon(
                icon: Icon(Icons.logout),
                label: 'Logout',
                onPressed: () {},
              ),

              heightspace(10),
            ],
          ),
        ),
      ),
      // //FAB
      // floatingActionButton: MyPrimaryButton(
      //   label: 'Edit Profile',
      //   width: 150,
      //   onPressed: () {},
      // ),
    );
  }
}
