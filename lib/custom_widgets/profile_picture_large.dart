import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health/config/alternateImages.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/screens/user_profile_page/view/user_profile_page.dart';

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
    final theme = Theme.of(context).colorScheme;
    //UI
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: (widget.imageURL != '')
                ? Image.network(
                    imageURL,
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyLabel(
                  text: widget.primaryText,
                  color: Colors.white,
                  size: TextSizes.h6,
                  weight: FontWeight.bold,
                ),
                MyLabel(
                  text: widget.secondaryText,
                  color: Colors.white,
                  size: TextSizes.b1,
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
      ),
    );
  }
}
