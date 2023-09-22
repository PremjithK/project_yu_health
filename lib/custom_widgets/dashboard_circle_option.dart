import 'package:flutter/material.dart';
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
    final textTheme = Theme.of(context).textTheme;
    return Container(
      // color: Colors.red,
      width: 80,
      height: 130,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              onTapDown: (details) {
                setState(() {});
              },
              //
              // focusColor: theme.secondaryContainer,
              // highlightColor: theme.secondaryContainer,
              // splashColor: theme.secondaryContainer,
              child: Ink(
                height: 80,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.secondaryContainer,
                ),
                child: Icon(
                  widget.icon,
                  color: theme.onSecondaryContainer,
                  size: 30,
                ),
              ),
            ),
          ),
          Text(
            widget.caption,
            style: TextStyle(
              fontSize: 12,
              fontFamily: mainFontFamily,
              fontWeight: FontWeight.w600,
              color: theme.onSecondaryContainer,
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
