import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class DashboardLongOption extends StatelessWidget {
  const DashboardLongOption({
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.color,
    super.key,
  });

  final String title;
  final String subTitle;
  final Color? color;
  final Widget icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      // highlightColor: theme.colorScheme.primary,
      // splashColor: theme.colorScheme.primary,
      onTap: onTap,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        width: deviceWidth,
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Row(
          children: [
            Flexible(
              child: CircleAvatar(
                backgroundColor:
                    theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                radius: 25,
                foregroundColor: theme.colorScheme.primaryContainer,
                child: icon,
              ),
            ),
            widthspace(10),
            Flexible(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: titleFontFamily,
                      color: theme.colorScheme.onPrimaryContainer,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                  heightspace(2),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontFamily: mainFontFamily,
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(0.75),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
