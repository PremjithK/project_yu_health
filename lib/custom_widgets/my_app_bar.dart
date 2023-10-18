import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/circle_appbar_button.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    required this.title,
    required this.showBackButton,
    this.actionButtons,
    this.margin = 10,
    super.key,
  });
  final double margin;
  final String title;
  final bool showBackButton;
  final List<CircleAppbarButton>? actionButtons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showBackButton)
                CircleAppbarButton(
                  size: 16,
                  icon: Icons.arrow_back_ios_new,
                  onTap: () {},
                )
              else
                const SizedBox(),
              widthspace(10),
              MyHeading(
                text: 'Consult this doctor',
                size: TextSizes.pageTitle,
                letterSpacing: -1,
              ),
            ],
          ),
          if (actionButtons!.isNotEmpty)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: actionButtons!,
            )
          else
            SizedBox(),
        ],
      ),
    );
  }
}
