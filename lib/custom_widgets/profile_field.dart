import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/theme.dart';
import 'package:yu_health/custom_widgets/text.dart';

class ProfileField extends StatelessWidget {
  const ProfileField({
    required this.value,
    required this.onEdit,
    super.key,
  });

  final String value;
  final void Function()? onEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyLabel(
          text: value,
          weight: FontWeight.w500,
          fontFamily: secondaryFont,
          letterSpacing: -0.5,
          size: TextSizes.h6,
        ),
        InkWell(
          onTap: onEdit,
          child: MyLabel(
            text: 'Edit',
            weight: FontWeight.w500,
            fontFamily: secondaryFont,
            color: theme.primary,
            letterSpacing: -0.5,
            size: TextSizes.b1,
          ),
        ),
      ],
    );
  }
}
