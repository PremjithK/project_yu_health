import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double commonIconSize = 20;

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    required this.selectedIndex,
    required this.onDestinationSelected,
    super.key,
  });

  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: NavigationBar(
        height: 65,
        indicatorColor: theme.primary,
        backgroundColor: Colors.transparent,
        destinations: [
          NavigationDestination(
            icon: Icon(
              FontAwesomeIcons.house,
              size: commonIconSize,
            ),
            selectedIcon: Icon(
              FontAwesomeIcons.house,
              color: theme.background,
              size: commonIconSize,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              FontAwesomeIcons.stethoscope,
              size: commonIconSize,
            ),
            selectedIcon: Icon(
              FontAwesomeIcons.stethoscope,
              color: theme.background,
              size: commonIconSize,
            ),
            label: 'Doctors',
          ),
          NavigationDestination(
            icon: Icon(
              FontAwesomeIcons.flaskVial,
              size: commonIconSize,
            ),
            selectedIcon: Icon(
              FontAwesomeIcons.flaskVial,
              color: theme.background,
              size: commonIconSize,
            ),
            label: 'Labs',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person,
              size: commonIconSize + 10,
            ),
            selectedIcon: Icon(
              Icons.person,
              color: theme.background,
              size: commonIconSize + 10,
            ),
            label: 'Profile',
          ),
        ],

        //Functions
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
