import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/theme.dart';

const double fontSize = 15;
const double borderRadius = 15;
const double textFormFieldHorizontalPadding = 15;
//const double textFormFieldVerticalPadding = 12;

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    this.hint,
    this.validator,
    this.controller,
    this.isPassword = false,
    this.prefixIcon,
    this.keyboardType,
    this.enabled = true,
    //Event Properties
    this.onChanged,
  });

  final String? hint;
  final bool enabled;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool isPassword;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;

  //Event Functions Being Passed
  final void Function(String)? onChanged;

  //
  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    //! Theme
    final theme = Theme.of(context).colorScheme;
    return TextFormField(
      // Config
      key: widget.key,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword,
      keyboardType: widget.keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      //Events
      onChanged: widget.onChanged,

      // INPUT TEXT STYLE
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        fontFamily: secondaryFont,
        letterSpacing: 0.5,
        color: Theme.of(context).colorScheme.onSurface,
      ),

      //Decoration
      decoration: InputDecoration(
        enabled: widget.enabled,

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: theme.outline.withOpacity(0.4),
            width: 2,
          ),
        ),
        //&ERROR MESSAGE STYLE
        errorStyle: TextStyle(
          color: Theme.of(context).colorScheme.error,
          fontSize: 12,
          fontFamily: secondaryFont,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        ),
        filled: true,
        fillColor: theme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: theme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: theme.primary,
          ),
        ),
        // LABEL STYLES
        // HINT STYLES
        labelText: widget.hint,
        floatingLabelStyle: const TextStyle(fontSize: 16),
        labelStyle: TextStyle(
          fontFamily: secondaryFont,
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),

        // PREFIX_ICON STYLE
        prefixIcon: (widget.prefixIcon != null)
            ? widthspace(60, widget.prefixIcon)
            : null,
        prefix: (widget.prefixIcon != null) ? widthspace(0) : widthspace(10),
        suffix: widthspace(10),
        contentPadding: const EdgeInsets.all(textFormFieldHorizontalPadding),
      ),
    );
  }
}
