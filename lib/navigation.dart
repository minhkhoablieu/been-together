import 'package:been_together/features/home/presentation/home_page_screen.dart';
import 'package:been_together/features/note/presentation/notes_list_screen.dart';
import 'package:been_together/features/setting/presentation/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int _currentIndex = 0;

  List<String> screenTitle = [
    'Home',
    'Search',
    'Setting'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 75,
        elevation: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: <Widget>[
        const HomePageScreen(),
        const NotesListScreen(),
        const SettingScreen()
      ][_currentIndex],
    );
  }
}