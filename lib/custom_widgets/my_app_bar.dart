import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/circle_appbar_button.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    required this.title,
    required this.showBackButton,
    this.actionButtons,
    this.margin,
    super.key,
  });
  final EdgeInsetsGeometry? margin;
  final String title;
  final bool showBackButton;
  final List<CircleAppbarButton>? actionButtons;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Container(
      padding: margin ?? const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showBackButton)
                CircleAppbarButton(
                  size: 25,
                  icon: Icons.arrow_back,
                  onTap: () {},
                )
              else
                const SizedBox(),
              widthspace(5),
              MyHeading(
                text: title,
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
            const SizedBox(),
        ],
      ),
    );
  }
}
