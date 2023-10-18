import 'package:flutter/material.dart';
import 'package:yu_health/config/text_sizes.dart';
import 'package:yu_health/custom_widgets/lab_search_result.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/yu_search_bar.dart';

class Lab {
  Lab({
    required this.open,
    required this.name,
    required this.city,
    required this.imageURL,
    required this.phoneNumber,
    required this.testsList,
  });

  final bool open;
  final String name;
  final String city;
  final String phoneNumber;
  final String imageURL;
  final List<String> testsList;
}

final labsList = <Lab>[
  Lab(
    open: true,
    name: 'BML Labs Pvt Ltd',
    city: 'London',
    imageURL: 'https://britishmedicallab.com/wp-content/uploads/2017/03/bml-lab-dayJPG.jpg',
    phoneNumber: '295-859',
    testsList: ['covid-19', 'THS', 'X-RAY', 'CBC'],
  ),
];

class SearchLabsPage extends StatelessWidget {
  const SearchLabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          heightspace(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                MyHeading(
                  text: 'Search Labs',
                  size: TextSizes.pageTitle,
                  letterSpacing: -1,
                ),
              ],
            ),
          ),
          heightspace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MySearchBar(
              controller: TextEditingController(),
              onChanged: (value) {},
              hint: 'Search by name or location',
            ),
          ),
          heightspace(10),
          // ListView
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              itemCount: labsList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return LabSearchResult(
                  name: labsList[index].name,
                  open: labsList[index].open,
                  city: labsList[index].city,
                  testsList: labsList[index].testsList,
                  phoneNumber: labsList[index].phoneNumber,
                  imageURL: labsList[index].imageURL,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
