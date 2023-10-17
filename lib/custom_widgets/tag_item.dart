import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/text.dart';

class TagItem extends StatelessWidget {
  const TagItem({
    this.text,
    super.key,
  });
  final String? text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: theme.primary,
      ),
      child: MyLabel(
        text: text ?? '...',
        // style
        size: 11,
        fontFamily: 'OxygenMono',
        textAlign: TextAlign.center,
        color: theme.onPrimary,
        weight: FontWeight.bold,
        height: 1,
      ),
    );
  }
}
