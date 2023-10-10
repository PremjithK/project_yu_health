import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class SearchLabsPage extends StatelessWidget {
  const SearchLabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          heightspace(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyHeading(
              text: 'Search Labs',
              size: TextSizes.h3,
              letterSpacing: -1,
            ),
          ),
        ],
      ),
    );
  }
}
