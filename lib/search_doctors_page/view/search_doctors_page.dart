import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/doctor_search_result.dart';
import 'package:yu_health/custom_widgets/main_search_bar.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

class Doctor {
  Doctor({
    required this.name,
    required this.department,
    required this.qualification,
    required this.clinic,
    required this.isOnline,
  });
  final String name;
  final String department;
  final String qualification;
  final String clinic;
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
      name: 'Arun',
      department: 'ENT',
      qualification: 'MBBS MD',
      clinic: 'MIMS',
      isOnline: true,
    ),
    Doctor(
      name: 'Vimal',
      department: 'ORTHO',
      qualification: 'MBBS MD',
      clinic: 'BMH',
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
              doc.department.toLowerCase().contains(value.toLowerCase()) ||
              doc.clinic.toLowerCase().contains(value.toLowerCase());
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightspace(25),
              MainHeading(
                text: 'Search Doctors',
                size: TextSizes.h4,
                weight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
              heightspace(15),
              MainSearchBar(
                onChanged: filterDoctors,
                controller: _searchController,
                hint: 'Enter a name, department or hospital',
              ),
              heightspace(20),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: filteredDoctors.length,
                  itemBuilder: (context, index) {
                    //
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: DoctorSearchResult(
                        name: filteredDoctors[index].name,
                        department: filteredDoctors[index].department,
                        qualification: filteredDoctors[index].qualification,
                        clinic: filteredDoctors[index].clinic,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
