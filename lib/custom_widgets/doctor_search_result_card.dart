import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class DoctorSearchResultCard extends StatelessWidget {
  const DoctorSearchResultCard({
    required this.name,
    required this.specialization,
    required this.clinic,
    required this.imageURL,
    required this.onTap,
    super.key,
  });
  final String imageURL;
  final String name;
  final String clinic;
  final String specialization;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    //Config
    final theme = Theme.of(context).colorScheme;
    // UI
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onTap,
          child: Ink(
            decoration: BoxDecoration(
              color: theme.onBackground.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //? Result Image With Icon Indicating availability
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                  child: Image.network(
                    imageURL,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                //? Info Section
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Doctor name
                      Text(
                        'Dr. ${name.toUpperCase()}',
                        style: TextStyle(
                          fontFamily: primaryFont,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: theme.onBackground,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                      // Doctor Specializationm
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: theme.primary,
                        ),
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          specialization,
                          style: TextStyle(
                            fontFamily: 'OxygenMono',
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: theme.background.withOpacity(0.9),
                          ),
                        ),
                      ),
                      // Hospital Name
                      Text(
                        clinic,
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: primaryFont,
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          letterSpacing: 0.5,
                          color: theme.onBackground.withOpacity(0.75),
                        ),
                      ),
                      heightspace(5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
