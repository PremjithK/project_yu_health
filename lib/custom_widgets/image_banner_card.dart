import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
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
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.onBackground.withOpacity(0.2),
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: theme.colorScheme.outline,
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
              Container(
                color: Colors.black.withOpacity(0.24),
                width: double.infinity,
                height: double.infinity,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: theme.colorScheme.primary,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: primaryFont,
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.onPrimary.withOpacity(0.9),
                          letterSpacing: 0,
                          height: 0.7,
                        ),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: primaryFont,
                          fontWeight: FontWeight.w600,
                          color: theme.colorScheme.onPrimary.withOpacity(0.5),
                          height: 1,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
