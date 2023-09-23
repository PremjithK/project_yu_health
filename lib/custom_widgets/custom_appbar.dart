import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class YuAppBar extends StatelessWidget {
  const YuAppBar({
    required this.title,
    this.backButton = true,
    this.onBackButtonPressed,
    super.key,
  });

  final bool backButton;
  final String title;
  final void Function()? onBackButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      decoration: BoxDecoration(
        //color: Colors.orange,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back Button
          if (backButton)
            IconButton(
              splashRadius: 25,
              onPressed: onBackButtonPressed,
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 25,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),

          // Title
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              // fontWeight: FontWeight.bold,
              fontFamily: primaryFont,
              fontVariations: const [FontVariation('wght', 600)],
              letterSpacing: -0.25,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          //Profile Pic
          CircleAvatar(
            radius: 18,
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            child: const Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
