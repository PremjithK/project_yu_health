import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yu_health/custom_widgets/dashboard_circle_option.dart';
import 'package:yu_health/custom_widgets/dashboard_long_option.dart';
import 'package:yu_health/custom_widgets/image_banner_card.dart';
import 'package:yu_health/custom_widgets/profile_avatar_circle.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/screens/search_doctors_page/view/search_doctors_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            heightspace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyHeading(
                      text: 'Dave Smith',
                      letterSpacing: -0.5,
                      size: TextSizes.h5,
                      weight: FontWeight.w600,
                    ),
                    MyHeading(
                      text: 'YuHealth.',
                      color: theme.primary,
                      size: TextSizes.h4,
                    ),
                  ],
                ),
                const ProfilePictureAvatar(),
              ],
            ),
            heightspace(20),
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
              subTitle: 'Book an offline appointment with a doctor near you',
              icon: Icon(
                FontAwesomeIcons.handshake,
                color: theme.onPrimaryContainer,
                size: 21,
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
                size: 21,
              ),
              color: theme.onBackground,
            ),
            heightspace(20),

            //& Circle Options
            const Spacer(),
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
                  onTap: () {
                    Get.to<Widget>(const SearchDoctorsPage());
                  },
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
            heightspace(10),

            //^ end
          ],
        ),
      ),
    );
  }
}
