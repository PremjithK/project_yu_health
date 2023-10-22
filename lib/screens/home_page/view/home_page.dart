import 'package:flutter/material.dart';
import 'package:yu_health/custom_widgets/navigation_bar.dart';
import 'package:yu_health/screens/dashboard_page/view/dashboard_page.dart';
import 'package:yu_health/screens/search_doctors_page/search_doctors_page.dart';
import 'package:yu_health/screens/search_labs.dart/search_labs_page.dart';
import 'package:yu_health/screens/user_profile_page/user_profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedtIndex = 0;

// Switch Between Pages
  void navigate(int index) {
    setState(() {
      _selectedtIndex = index;
    });
  }

  //^ Navigation Bar Destinations
  final List<Widget> _pages = const [
    DashboardPage(),
    SearchDoctorsPage(),
    SearchLabsPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.background,
      body: _pages[_selectedtIndex],
      //& NAVIGATION BAR
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: theme.background,
          boxShadow: [
            BoxShadow(
              color: theme.onBackground.withOpacity(0.20),
              blurRadius: 5,
            ),
          ],
        ),
        child: MyNavigationBar(
          selectedIndex: _selectedtIndex,
          onDestinationSelected: navigate,
        ),
      ),
    );
  }
}
