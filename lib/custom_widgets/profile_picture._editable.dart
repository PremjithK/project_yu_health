import 'package:flutter/material.dart';

class ProfilePictureEditable extends StatefulWidget {
  const ProfilePictureEditable({
    required this.imageURL,
    required this.height,
    required this.width,
    super.key,
  });

  final String imageURL;
  final double height;
  final double width;

  @override
  State<ProfilePictureEditable> createState() => _ProfilePictureEditableState();
}

class _ProfilePictureEditableState extends State<ProfilePictureEditable> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: theme.onBackground,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: theme.onBackground.withOpacity(0.5),
                blurRadius: 10,
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            widget.imageURL,
            width: widget.width,
            height: widget.height,
            fit: BoxFit.cover,
          ),
        ),
        // Edit Button
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.15),
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 20,
              foregroundColor: theme.onPrimary,
              backgroundColor: theme.primary,
              child: IconButton(
                splashRadius: 25,
                onPressed: () {
                  print('Edit clicked');
                },
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
