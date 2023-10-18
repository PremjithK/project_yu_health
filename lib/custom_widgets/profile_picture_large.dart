import 'package:flutter/material.dart';
import 'package:yu_health/config/alternateImages.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/text.dart';

class ProfilePictureLarge extends StatefulWidget {
  const ProfilePictureLarge({
    required this.isEditable,
    required this.imageURL,
    required this.height,
    required this.primaryText,
    required this.secondaryText,
    this.width = 300,
    super.key,
  });
  final bool isEditable;
  final String primaryText;
  final String secondaryText;
  final String imageURL;
  final double height;
  final double? width;

  @override
  State<ProfilePictureLarge> createState() => _ProfilePictureLargeState();
}

class _ProfilePictureLargeState extends State<ProfilePictureLarge> {
  @override
  Widget build(BuildContext context) {
    //final theme = Theme.of(context).colorScheme;
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
        // Name Bar
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          width: widget.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyLabel(
                text: widget.primaryText,
                color: Colors.white,
                size: TextSizes.h6,
                weight: FontWeight.w600,
              ),
              MyLabel(
                text: widget.secondaryText,
                color: Colors.white,
                size: TextSizes.b2,
              ),
            ],
          ),
        ),

        // Edit Button
        if (widget.isEditable)
          Positioned(
            top: 10,
            right: 10,
            child: IconButton.filled(
              color: Colors.green,
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}
