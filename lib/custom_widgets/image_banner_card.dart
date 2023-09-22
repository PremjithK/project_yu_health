import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class ImageBannerCard extends StatelessWidget {
  const ImageBannerCard({
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.imageURL,
    super.key,
  });
  final String title;
  final String subTitle;
  final String imageURL;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return InkWell(
      highlightColor: theme.colorScheme.primary,
      splashColor: theme.colorScheme.primary,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: Colors.transparent,
            //width: 1,
          ),
        ),
        width: deviceWidth,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                imageURL,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: titleFontFamily,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onBackground,
                        letterSpacing: -1,
                        height: 1,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: titleFontFamily,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.75),
                        height: 1,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
