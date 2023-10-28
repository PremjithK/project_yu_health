import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/theme.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class ProfileField extends StatelessWidget {
  const ProfileField({
    required this.value,
    required this.onEdit,
    this.textSize,
    this.title = '',
    super.key,
  });

  final String value;
  final String title;
  final double? textSize;
  final void Function()? onEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != '')
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widthspace(15),
              MyLabel(
                color: theme.onBackground,
                text: '$title :'.toUpperCase(),
                size: TextSizes.b3,
                letterSpacing: -0.5,
                weight: FontWeight.bold,
              ),
            ],
          )
        else
          const SizedBox(),
        heightspace(3),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: theme.surfaceVariant,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyLabel(
                  text: value,
                  color: theme.onPrimaryContainer.withOpacity(0.9),
                  weight: FontWeight.w600,
                  fontFamily: primaryFont,
                  letterSpacing: -0.5,
                  size: textSize ?? TextSizes.b1,
                ),
              ),
              widthspace(10),
              InkWell(
                radius: 20,
                onTap: onEdit,
                child: Ink(
                  padding: const EdgeInsets.all(2),
                  child: MyLabel(
                    text: 'EDIT',
                    weight: FontWeight.w500,
                    fontFamily: secondaryFont,
                    color: theme.primary,
                    letterSpacing: -0.5,
                    size: TextSizes.b2,
                  ),
                ),
              ),
            ],
          ),
        ),
        heightspace(10),
      ],
    );
  }
}
