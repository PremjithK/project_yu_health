import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/config/theme.dart';

class CaptionWithIcon extends StatelessWidget {
  const CaptionWithIcon({
    required this.text,
    required this.icon,
    super.key,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
          ),
          widthspace(10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: secondaryFont,
                fontSize: TextSizes.b2,
                height: 1.1,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
