import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/text.dart';

class LabSearchResult extends StatelessWidget {
  const LabSearchResult({
    required this.name,
    required this.phoneNumber,
    required this.imageURL,
    super.key,
  });

  final String name;
  final String phoneNumber;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      // padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.onBackground.withOpacity(0.15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              'https://britishmedicallab.com/wp-content/uploads/2017/03/bml-lab-bml-lab-building.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          // Details
          Padding(
            padding: const EdgeInsets.all(15),
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: [
                Flexible(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Lab Name
                      MyHeading(
                        text: name,
                        size: TextSizes.h5,
                      ),
                      //Address
                      MyLabel(
                        text: 'London Jane Street \nPO-564091',
                        maxLines: 2,
                        weight: FontWeight.w600,
                        size: TextSizes.b2,
                        color: theme.onBackground.withOpacity(0.65),
                      ),
                    ],
                  ),
                ),
                Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyLabel(
                          text: 'Working Time',
                          size: TextSizes.b2,
                          weight: FontWeight.bold,
                        ),
                        MyLabel(text: 'start: 9:00am'),
                        MyLabel(text: 'end: 6:00pm'),
                      ],
                    )),

                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
