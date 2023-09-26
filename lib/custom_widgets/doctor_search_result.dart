import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/theme.dart';

const double commonHeight = 125;

const String testImage1 = '';
const String testImage2 = '';

class DoctorSearchResult extends StatelessWidget {
  const DoctorSearchResult({
    required this.name,
    required this.department,
    required this.qualification,
    required this.clinic,
    this.imageURL,
    super.key,
  });

  final String name;
  final String department;
  final String qualification;
  final String clinic;
  final String? imageURL;

  @override
  Widget build(BuildContext context) {
    // Config
    final theme = Theme.of(context);
    // UI
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Ink(
        height: commonHeight,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: theme.colorScheme.onSecondaryContainer.withOpacity(0.25),
          ),
          color: theme.colorScheme.secondaryContainer,
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg',
                  fit: BoxFit.cover,
                  height: commonHeight,
                ),
              ),
            ),
            widthspace(15),
            Flexible(
              flex: 2,
              child: SizedBox(
                height: commonHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Doctor Name
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: secondaryFont,
                        color: theme.colorScheme.onSecondaryContainer,
                        height: 1,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: theme.colorScheme.onSecondaryContainer,
                      ),
                      child: Text(
                        department,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: secondaryFont,
                          color: theme.colorScheme.secondaryContainer,
                          height: 0,
                        ),
                      ),
                    ),
                    Text(
                      clinic,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: secondaryFont,
                        color: theme.colorScheme.onSecondaryContainer,
                        height: 0,
                      ),
                    ),
                    Text(
                      qualification,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: secondaryFont,
                        color: theme.colorScheme.onSecondaryContainer,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
