import 'package:flutter/material.dart';
import 'package:yu_health/config/alternateImages.dart';
import 'package:yu_health/custom_widgets/buttons.dart';

class ProfilePictureLarge extends StatefulWidget {
  const ProfilePictureLarge({
    required this.isEditable,
    required this.imageURL,
    required this.height,
    this.width = 300,
    super.key,
  });
  final bool isEditable;
  final String imageURL;
  final double height;
  final double? width;

  @override
  State<ProfilePictureLarge> createState() => _ProfilePictureLargeState();
}

class _ProfilePictureLargeState extends State<ProfilePictureLarge> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: (widget.imageURL != '')
              ? Image.network(
                  widget.imageURL,
                  width: widget.width,
                  height: widget.height,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  alternateLabLmage,
                  width: widget.width,
                  height: widget.height,
                  fit: BoxFit.cover,
                ),
        ),

        // Edit Button
        if (widget.isEditable)
          Positioned(
            bottom: 10,
            right: 10,
            child: MyPrimaryButtonWithIcon(
              label: 'Edit',
              icon: Icon(Icons.change_circle),
              onPressed: () {},
            ),
          ),
      ],
    );
  }
}
