import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double commonIconSize = 20;

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.backgroundColor = Colors.transparent,
    this.height = 65,
    super.key,
  });

  final int selectedIndex;
  final Color backgroundColor;
  final double height;
  final void Function(int index) onDestinationSelected;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //UI
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: NavigationBar(
        height: height,
        indicatorColor: theme.primary,
        surfaceTintColor: theme.background,
        backgroundColor: backgroundColor,
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
        ),
        destinations: [
          NavigationDestination(
            icon: const Icon(
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
            icon: const Icon(
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
            icon: const Icon(
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
            icon: const Icon(
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
