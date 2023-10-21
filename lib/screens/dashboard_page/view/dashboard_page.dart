import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/ui_sizes.dart';
import 'package:yu_health/custom_widgets/dashboard_circle_option.dart';
import 'package:yu_health/custom_widgets/image_banner_card.dart';
import 'package:yu_health/custom_widgets/profile_avatar_circle.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: globalScreenPaddingX),
        child: ListView(
          children: [
            //& Banner Image
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
                      size: TextSizes.h6,
                      weight: FontWeight.w600,
                    ),
                    MyHeading(
                      text: 'YuHealth.',
                      letterSpacing: -1,
                      color: theme.primary,
                      size: TextSizes.h3,
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
            heightspace(20),
            //& User Acctivity/ History
            MyHeading(
              text: 'History',
              size: TextSizes.h3,
              letterSpacing: -1,
            ),
            const Divider(),
            const MyLabel(text: 'You have no recent activity.'),
            // Activity history goes here
            heightspace(20),

            //& Circle Options
            //const Spacer(),
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
                  icon: FontAwesomeIcons.fileInvoice,
                  caption: 'My Prescriptions',
                ),
                DashboardCircleOption(
                  onTap: () {},
                  icon: FontAwesomeIcons.wallet,
                  caption: 'Payment History',
                ),
                DashboardCircleOption(
                  onTap: () {},
                  icon: FontAwesomeIcons.kitMedical,
                  caption: 'More Services',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
