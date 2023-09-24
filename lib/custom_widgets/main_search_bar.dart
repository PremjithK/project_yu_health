import 'package:flutter/material.dart';
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
          fontFamily: primaryFont,
          fontWeight: FontWeight.w500,
          color: theme.onBackground,
        ),

        decoration: InputDecoration(
          filled: true,
          fillColor: theme.background,
          hintText: hint,
          contentPadding: const EdgeInsets.all(20),

          // Enabled Border
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: theme.onBackground.withOpacity(0.5),
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
        ),
      ),
    );
  }
}
