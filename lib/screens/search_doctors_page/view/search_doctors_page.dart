import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/doctor_search_result_card.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/yu_search_bar.dart';

class Doctor {
  Doctor({
    required this.name,
    required this.department,
    required this.qualification,
    required this.clinic,
    required this.imageURL,
    required this.isOnline,
  });
  final String name;
  final String department;
  final String qualification;
  final String clinic;
  final String imageURL;
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
      qualification: 'MBBS',
      imageURL:
          'https://media.istockphoto.com/id/1470505351/photo/portrait-of-a-smiling-doctor-holding-glasses-and-a-mobile-phone-at-the-office.webp?b=1&s=170667a&w=0&k=20&c=8CebFLF4PFnt9JYJznGhYoOQxcyHLVpTGVfkvEsZd2Q=',
      clinic: 'MIMS',
      isOnline: true,
    ),
    Doctor(
      name: 'Vimal',
      department: 'ORTHO',
      qualification: 'MBBS MD',
      imageURL:
          'https://media.istockphoto.com/id/1470505351/photo/portrait-of-a-smiling-doctor-holding-glasses-and-a-mobile-phone-at-the-office.webp?b=1&s=170667a&w=0&k=20&c=8CebFLF4PFnt9JYJznGhYoOQxcyHLVpTGVfkvEsZd2Q=',
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

  // Filtering through doctor results
  Future<void> filterDoctors(String value) async {
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
        child: Column(
          children: [
            ColoredBox(
              color: theme.colorScheme.background,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heightspace(15),
                    MyHeading(
                      text: 'Search Doctors',
                      size: TextSizes.h3,
                      letterSpacing: -1,
                    ),
                    heightspace(10),
                    MySearchBar(
                      onChanged: filterDoctors,
                      controller: _searchController,
                      hint: 'Search by name, specialization or clinic',
                    ),
                    heightspace(20),
                  ],
                ),
              ),
            ),

            //! Doctors Search Results GridView
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: filteredDoctors.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return DoctorSearchResultCard(
                    name: filteredDoctors[index].name,
                    specialization: filteredDoctors[index].department,
                    clinic: filteredDoctors[index].clinic,
                    imageURL: filteredDoctors[index].imageURL,
                    onTap: () {
                      print('Clicked Card');
                    },
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
