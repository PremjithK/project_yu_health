import 'package:flutter/material.dart';
import 'package:yu_health/config/alternateImages.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/tag_item.dart';
import 'package:yu_health/custom_widgets/text.dart';

const double imageHeight = 200;

class LabSearchResult extends StatelessWidget {
  const LabSearchResult({
    required this.name,
    required this.city,
    required this.phoneNumber,
    required this.imageURL,
    required this.testsList,
    required this.open,
    required this.onTap,
    super.key,
  });

  final bool open;
  final String name;
  final String city;
  final String phoneNumber;
  final List<String> testsList;
  final String imageURL;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: theme.surfaceVariant.withOpacity(0.75),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: (imageURL == '')
                      ? Image.asset(
                          alternateLabLmage,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: imageHeight,
                        )
                      : Image.network(
                          imageURL,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: imageHeight,
                        ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyHeading(
                        text: name,
                        color: Colors.white,
                        size: TextSizes.h6,
                        weight: FontWeight.bold,
                      ),
                      MyHeading(
                        text: city,
                        color: Colors.white,
                        size: TextSizes.h6,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Address
                        heightspace(2.5),

                        //? Available Tests Tag Grid
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: testsList.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemBuilder: (context, index) {
                            return TagItem(text: testsList[index].toUpperCase());
                          },
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyLabel(
                          text: 'Working Time',
                          size: TextSizes.b3,
                          weight: FontWeight.bold,
                        ),
                        const MyLabel(text: 'start: 9:00am'),
                        const MyLabel(text: 'end: 6:00pm'),
                        if (!open)
                          MyLabel(
                            text: 'Closed'.toUpperCase(),
                            color: Colors.red,
                            weight: FontWeight.bold,
                          )
                        else
                          const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
