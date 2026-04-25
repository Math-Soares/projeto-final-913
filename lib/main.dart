import 'package:flutter/material.dart';
import 'package:primeiroaplicativo/weekprevious_page.dart';
import 'package:primeiroaplicativo/wheaterwarning_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.date_range_outlined),
              selectedIcon: Icon(Icons.date_range),
              label: 'Previous',
            ),
            NavigationDestination(
              icon: Icon(Icons.warning_amber_rounded),
              selectedIcon: Icon(Icons.warning_amber_rounded),
              label: 'Warning',
            ),
          ],
        ),
        body: <Widget>[WeekpreviousPage(), StormWarningPage()][_selectedIndex],
      ),
    );
  }
}///oi