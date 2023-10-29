import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/config/theme.dart';
import 'package:yu_health/custom_widgets/spacing.dart';

const double fontSize = 16;
const double borderRadius = 55;
const double textFormFieldPadding = 10;

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
    this.filled = false,
    this.maxLines = 1,
    //Event Properties
    this.onChanged,
  });

  final String? hint;
  final bool enabled;
  final bool filled;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool isPassword;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final int? maxLines;

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
      maxLines: widget.maxLines,
      //Events
      onChanged: widget.onChanged,

      // INPUT TEXT STYLE
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        fontFamily: primaryFont,
        letterSpacing: 0.5,
        color: Theme.of(context).colorScheme.onSurface,
      ),

      //Decoration
      decoration: InputDecoration(
        enabled: widget.enabled,
        //& Disabled Border
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: theme.outline.withOpacity(0.3),
          ),
        ),
        //& ERROR MESSAGE STYLE
        errorStyle: TextStyle(
          color: Theme.of(context).colorScheme.error,
          fontSize: TextSizes.b3,
          fontFamily: primaryFont,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        ),
        filled: widget.filled,
        fillColor: theme.surface,
        // & Default Border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        // & Enabled Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: theme.outline.withOpacity(0.5)),
        ),
        // & Focused Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: theme.primary,
          ),
        ),
        // LABEL STYLES
        // HINT STYLES
        labelText: widget.hint,
        floatingLabelStyle: TextStyle(
          fontSize: TextSizes.b1,
          fontFamily: primaryFont,
        ),
        labelStyle: TextStyle(
          fontFamily: primaryFont,
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),

        // PREFIX_ICON STYLE
        prefixIcon: (widget.prefixIcon != null) ? widthspace(60, widget.prefixIcon) : null,
        prefix: (widget.prefixIcon != null) ? widthspace(0) : widthspace(10),
        suffix: widthspace(10),
        contentPadding: const EdgeInsets.all(textFormFieldPadding),
      ),
    );
  }
}

//! MULTILINE TEXT FORM FIELD
class MyMultilineTextFormField extends StatefulWidget {
  const MyMultilineTextFormField({
    super.key,
    this.hint,
    this.validator,
    this.controller,
    this.isPassword = false,
    this.keyboardType,
    this.enabled = true,
    this.filled = false,
    this.maxLines = 2,
    //Event Properties
    this.onChanged,
  });

  final String? hint;
  final bool enabled;
  final bool filled;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool isPassword;
  final TextInputType? keyboardType;
  final int? maxLines;

  //Event Functions Being Passed
  final void Function(String)? onChanged;

  //
  @override
  State<MyMultilineTextFormField> createState() => _MyMultilineTextFormFieldState();
}

class _MyMultilineTextFormFieldState extends State<MyMultilineTextFormField> {
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
      maxLines: widget.maxLines,
      //Events
      onChanged: widget.onChanged,

      // INPUT TEXT STYLE
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        fontFamily: primaryFont,
        letterSpacing: 0.5,
        color: Theme.of(context).colorScheme.onSurface,
      ),

      //Decoration
      decoration: InputDecoration(
        enabled: widget.enabled,
        //& Disabled Border
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius / 2),
          borderSide: BorderSide(
            color: theme.outline.withOpacity(0.3),
          ),
        ),
        //& ERROR MESSAGE STYLE
        errorStyle: TextStyle(
          color: Theme.of(context).colorScheme.error,
          fontSize: TextSizes.b3,
          fontFamily: primaryFont,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        ),
        filled: widget.filled,
        fillColor: theme.surface,
        // & Default Border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius / 2),
        ),
        // & Enabled Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius / 2),
          borderSide: BorderSide(color: theme.outline.withOpacity(0.5)),
        ),
        // & Focused Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius / 2),
          borderSide: BorderSide(
            color: theme.primary,
          ),
        ),
        // LABEL STYLES
        // HINT STYLES
        labelText: widget.hint,
        floatingLabelStyle: TextStyle(
          fontSize: TextSizes.b1,
          fontFamily: primaryFont,
        ),
        labelStyle: TextStyle(
          fontFamily: primaryFont,
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),

        // PREFIX_ICON STYLE
        contentPadding: const EdgeInsets.symmetric(
          horizontal: textFormFieldPadding * 2,
          vertical: 10,
        ),
      ),
    );
  }
}

//! DATE PICKER
class MyDateFormField extends StatefulWidget {
  const MyDateFormField({
    required this.onTap,
    this.prefixIcon,
    super.key,
    this.hint,
    this.validator,
    this.controller,
    this.isPassword = false,
    this.keyboardType,
    this.enabled = true,
    this.filled = false,
    //Event Properties
    this.onChanged,
  });

  final String? hint;
  final bool enabled;
  final bool filled;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool isPassword;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;

  //Event Functions
  final void Function(String)? onChanged;
  final void Function()? onTap;

  //
  @override
  State<MyDateFormField> createState() => _MyDateFormFieldState();
}

class _MyDateFormFieldState extends State<MyDateFormField> {
  @override
  Widget build(BuildContext context) {
    // Theme
    final theme = Theme.of(context).colorScheme;
    return TextFormField(
      // Config
      key: widget.key,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword,
      keyboardType: widget.keyboardType,
      autovalidateMode: AutovalidateMode.always,
      //Events
      onChanged: widget.onChanged,
      onTap: widget.onTap,

      // INPUT TEXT STYLE
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        fontFamily: primaryFont,
        letterSpacing: 0.5,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      readOnly: true,

      decoration: InputDecoration(
        enabled: widget.enabled,
        //& Disabled Border
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: theme.outline.withOpacity(0.3),
          ),
        ),
        //& ERROR MESSAGE STYLE
        errorStyle: TextStyle(
          color: Theme.of(context).colorScheme.error,
          fontSize: TextSizes.b3,
          fontFamily: primaryFont,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        ),
        filled: widget.filled,
        fillColor: theme.surface,
        // & Default Border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        // & Enabled Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: theme.outline.withOpacity(0.5)),
        ),
        // & Focused Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: theme.primary,
          ),
        ),

        //& LABEL STYLES
        labelText: widget.hint,
        floatingLabelStyle: TextStyle(
          fontSize: TextSizes.b1,
          fontFamily: primaryFont,
        ),
        labelStyle: TextStyle(
          fontFamily: primaryFont,
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),

        //   //& PREFIX_ICON
        prefixIcon: (widget.prefixIcon != null) ? widthspace(60, widget.prefixIcon) : null,
        prefix: (widget.prefixIcon != null) ? widthspace(0) : widthspace(10),
        suffix: widthspace(10),
        contentPadding: const EdgeInsets.all(textFormFieldPadding),
      ),
    );
  }
}
