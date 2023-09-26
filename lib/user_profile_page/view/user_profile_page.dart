import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text.dart';

const String imageURL =
    'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Config
    final theme = Theme.of(context).colorScheme;

    //UI
    //const Color(0xFF1156CE),
    return Scaffold(
      // backgroundColor: theme.background.withOpacity(0.5),
      body: Stack(
        children: [
          Image.network(
            'https://img.freepik.com/premium-vector/healthcare-concept-with-flat-icons-symbols_322958-421.jpg',
            fit: BoxFit.cover,
            height: 300,
          ),
          Container(
            margin: const EdgeInsets.only(top: 210),
            decoration: BoxDecoration(
              color: theme.background,
            ),
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        // padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: theme.background,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: theme.onBackground.withOpacity(0.25),
                              blurRadius: 10,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: theme.background,
                        ),
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image.network(
                            imageURL,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      heightspace(25),
                      MyText(
                        text: 'Ben Johnson',
                        weight: FontWeight.bold,
                        size: TextSizes.h3,
                      ),
                    ],
                  ),
                ),
                //? Editable Text Fields
              ],
            ),
          )
        ],
      ),
    );
  }
}
