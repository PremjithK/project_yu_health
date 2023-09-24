import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/main_search_bar.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text_fields.dart';
import 'package:yu_health/custom_widgets/text_types.dart';
import 'package:yu_health/custom_widgets/theme.dart';

class Doctor {
  Doctor({
    required this.name,
    required this.department,
    required this.qualification,
    required this.isOnline,
  });
  final String name;
  final String department;
  final String qualification;
  final bool isOnline;
}

class SearchDoctorsPage extends StatefulWidget {
  const SearchDoctorsPage({super.key});

  @override
  State<SearchDoctorsPage> createState() => _SearchDoctorsPageState();
}

class _SearchDoctorsPageState extends State<SearchDoctorsPage> {
  //?Controllers
  final TextEditingController _searchController = TextEditingController();

//test search data
  final List<Doctor> allDoctors = [
    Doctor(
      name: 'Dr. Arun',
      department: 'ENT',
      qualification: 'MBBS MD',
      isOnline: true,
    ),
    Doctor(
      name: 'Dr. Vimal',
      department: 'ORTHO',
      qualification: 'MBBS MD',
      isOnline: true,
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredDoctors.addAll(allDoctors);
  }

  final List<Doctor> filteredDoctors = [];

  void filterDoctors(String value) {
    final searchResults = <Doctor>[];
    setState(() {
      searchResults.addAll(allDoctors);
    });
    if (value.isNotEmpty) {
      searchResults.retainWhere(
        (doc) {
          return doc.name.toLowerCase().contains(value.toLowerCase()) ||
              doc.department.toLowerCase().contains(value.toLowerCase());
        },
      );
    }
    setState(() {
      filteredDoctors
        ..clear()
        ..addAll(searchResults);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            heightspace(25),
            const MainHeading(
              text: 'Search Doctors',
              size: 30,
              weight: FontWeight.bold,
            ),
            heightspace(15),
            MainSearchBar(
              onChanged: filterDoctors,
              controller: _searchController,
              hint: 'Search Doctors',
            ),
            heightspace(20),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: filteredDoctors.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: theme.colorScheme.onSecondaryContainer
                            .withOpacity(0.25),
                      ),
                      color: theme.colorScheme.secondaryContainer,
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                        ),
                        widthspace(15),
                        Text(
                          filteredDoctors[index].name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: primaryFont,
                            color: theme.colorScheme.onSecondaryContainer,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
