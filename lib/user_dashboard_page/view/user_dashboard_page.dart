import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yu_health/custom_widgets/dashboard_circle_option.dart';
import 'package:yu_health/custom_widgets/dashboard_long_option.dart';
import 'package:yu_health/custom_widgets/image_banner_card.dart';
import 'package:yu_health/custom_widgets/profile_avatar_circle.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/statusbar_coloring.dart';
import 'package:yu_health/custom_widgets/text_types.dart';

class UserDashboardPage extends StatefulWidget {
  const UserDashboardPage({super.key});

  @override
  State<UserDashboardPage> createState() => _UserDashboardPageState();
}

class _UserDashboardPageState extends State<UserDashboardPage> {
  @override
  Widget build(BuildContext context) {
    //! Making transparent status bar
    customStatusBar(context, Theme.of(context));

    final theme = Theme.of(context).colorScheme;
    //final textTheme = Theme.of(context).textTheme;
    // final deviceHeight = MediaQuery.of(context).size.height;
    //final deviceWidth = MediaQuery.of(context).size.width;

    //? UI
    return Scaffold(
      backgroundColor: theme.background,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightspace(60),
                // Header Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainHeading(
                          text: 'Yourname',
                          size: 20,
                        ),
                        MainHeading(
                          text: 'Dashboard',
                          color: theme.primary,
                          size: 30,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const ProfilePictureAvatar(),
                  ],
                ),
                heightspace(15),
                ImageBannerCard(
                  onTap: () {
                    print("Clicked Banner");
                  },
                  title: 'Consult Online',
                  subTitle: 'Consult with a doctor via Video Call',
                  imageURL: 'assets/images/doctor_with_pc.jpg',
                ),
                heightspace(16),
                //Dashboard Options
                DashboardLongOption(
                  onTap: () {},
                  title: 'Book Doctors Appointment',
                  subTitle:
                      'Book an offline appointment with a doctor near you',
                  icon: Icon(
                    FontAwesomeIcons.handshake,
                    color: theme.onPrimaryContainer,
                  ),
                  color: theme.onBackground,
                ),
                heightspace(8),
                DashboardLongOption(
                  onTap: () {},
                  title: 'Book Lab Appointment',
                  subTitle: 'Book Lab Tests In A Lab Near You',
                  icon: Icon(
                    FontAwesomeIcons.flask,
                    color: theme.onPrimaryContainer,
                  ),
                  color: theme.onBackground,
                ),
                heightspace(20),

                //& Circle Options
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DashboardCircleOption(
                      onTap: () {},
                      icon: FontAwesomeIcons.chartColumn,
                      caption: 'My Lab Reports',
                    ),
                    DashboardCircleOption(
                      onTap: () {},
                      icon: FontAwesomeIcons.fileMedical,
                      caption: 'My Prescriptions',
                    ),
                    DashboardCircleOption(
                      onTap: () {},
                      icon: FontAwesomeIcons.userDoctor,
                      caption: 'Search Doctors',
                    ),
                    DashboardCircleOption(
                      onTap: () {},
                      icon: FontAwesomeIcons.kitMedical,
                      caption: 'Emergency Services',
                    ),
                  ],
                ),
                //^ end
              ],
            ),
          ),
        ],
      ),
    );
  }
}
