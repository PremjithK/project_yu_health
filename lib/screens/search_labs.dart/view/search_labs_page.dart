import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/lab_search_result.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';
import 'package:yu_health/custom_widgets/yu_search_bar.dart';

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
                  size: TextSizes.h3,
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

          // ListView
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return LabSearchResult(
                  name: 'BML Labs',
                  phoneNumber: '2343420',
                  imageURL: '',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
