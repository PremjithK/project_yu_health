import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class DashboardCircleOption extends StatefulWidget {
  const DashboardCircleOption({
    required this.onTap,
    required this.caption,
    required this.icon,
    super.key,
  });
  final void Function() onTap;
  final IconData icon;
  final String caption;

  @override
  State<DashboardCircleOption> createState() => _DashboardCircleOptionState();
}

class _DashboardCircleOptionState extends State<DashboardCircleOption> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 75,
      height: 110,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAlias,
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              onTapDown: (details) {},
              //
              // focusColor: theme.secondaryContainer,
              highlightColor: theme.primary,
              splashColor: theme.primary,
              child: Ink(
                height: 70,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.primaryContainer,
                ),
                child: Icon(
                  widget.icon,
                  color: theme.onPrimaryContainer,
                  size: 25,
                ),
              ),
            ),
          ),
          heightspace(5),
          Text(
            widget.caption,
            style: TextStyle(
              fontSize: TextSizes.b3,
              fontFamily: secondaryFont,
              fontWeight: FontWeight.w600,
              color: theme.onPrimaryContainer,
              height: 1.1,
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
