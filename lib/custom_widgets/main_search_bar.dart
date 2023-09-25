import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/theme.dart';

double borderRadius = 15;
double borderWidth = 1;

class MainSearchBar extends StatelessWidget {
  const MainSearchBar({
    required this.controller,
    required this.onChanged,
    this.hint,
    super.key,
  });

  final TextEditingController controller;
  final void Function(String) onChanged;

  final String? hint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: theme.onBackground.withOpacity(0.15),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: TextInputType.text,

        // Input Text Style
        style: TextStyle(
          fontFamily: secondaryFont,
          fontWeight: FontWeight.w500,
          color: theme.onBackground,
          fontSize: 18,
          letterSpacing: -0.25,
        ),

        decoration: InputDecoration(
          //Label Style

          hintStyle: TextStyle(
            fontSize: 16,
            color: theme.onBackground.withOpacity(0.4),
            height: 1,
          ),

          filled: true,
          fillColor: theme.background,
          hintText: hint,
          contentPadding: const EdgeInsets.all(15),

          // Enabled Border
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: theme.onBackground.withOpacity(0.25),
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),

          // Focused Border
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: theme.primary,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),

          // Icon
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widthspace(15),
              const Icon(
                Icons.search,
                size: 28,
              ),
            ],
          ),
          prefix: widthspace(5),
        ),
      ),
    );
  }
}