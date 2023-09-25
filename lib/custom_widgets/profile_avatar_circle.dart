import 'package:flutter/material.dart';

class ProfilePictureAvatar extends StatefulWidget {
  const ProfilePictureAvatar({
    this.onTap,
    super.key,
  });
  final void Function()? onTap;

  @override
  State<ProfilePictureAvatar> createState() => _ProfilePictureAvatarState();
}

class _ProfilePictureAvatarState extends State<ProfilePictureAvatar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: theme.onPrimary,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: theme.primary,
          minRadius: 22,
          child: Icon(
            Icons.person,
            color: theme.onPrimary,
          ),
        ),
      ),
    );
  }
}
