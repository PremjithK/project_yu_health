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
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: theme.onBackground.withOpacity(0.05),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: theme.onPrimaryContainer.withOpacity(0.1),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //? Result Image With Icon Indicating availability
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                child: Image.network(
                  imageURL,
                  height: 175,
                  fit: BoxFit.cover,
                ),
              ),
              //? Info Section
              Column(
                children: [
                  //todo Doctor Name
                  Text(
                    name,
                    style: const TextStyle(
                      fontFamily: primaryFont,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  //todo Specialization
                  Text(
                    specialization,
                    style: const TextStyle(
                      fontFamily: primaryFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  //todo Clinic Name
                  Text(
                    clinic,
                    style: const TextStyle(
                      fontFamily: primaryFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
