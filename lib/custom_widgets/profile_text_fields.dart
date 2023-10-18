import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class ProfileTextField extends StatefulWidget {
  const ProfileTextField({
    required this.label,
    required this.controller,
    required this.validator,
    required this.width,
    this.enabled,
    this.keyboardType,
    super.key,
  });
  final bool? enabled;
  final String label;
  final double width;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return SizedBox(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(
            builder: (context) {
              final isFocused = focus.hasFocus;
              return Text(
                widget.label.toUpperCase(),
                style: TextStyle(
                  fontSize: TextSizes.b3,
                  height: 1,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: secondaryFont,
                  color:
                      // Changing label color based on whether the text field is active or not
                      !isFocused ? theme.onBackground.withOpacity(0.5) : theme.primary,
                ),
              );
            },
          ),
          Focus(
            focusNode: focus,
            child: TextFormField(
              cursorWidth: 3,
              controller: widget.controller,
              validator: widget.validator,

              // Config

              enabled: widget.enabled,
              autocorrect: false,
              keyboardType: widget.keyboardType,

              // Styles and decoration
              style: TextStyle(
                letterSpacing: 0.25,
                fontFamily: secondaryFont,
                fontSize: TextSizes.h5,
                color: theme.onBackground,
                fontWeight: FontWeight.w600,
              ),

              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.onBackground.withOpacity(0.25),
                    width: 2,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.primary,
                    width: 2,
                  ),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.error,
                    width: 2,
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.surfaceVariant,
                  ),
                ),
              ),
            ),
          ),
          heightspace(10),
        ],
      ),
    );
  }
}
