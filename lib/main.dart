import 'package:flutter/material.dart';
import 'package:primeiroaplicativo/weekprevious_page.dart';
import 'package:primeiroaplicativo/wheaterwarning_page.dart';

import 'home_page.dart';

void main() {
  runApp(const mainApp());
}

class mainApp extends StatefulWidget {
  const mainApp({super.key});

  @override
  State<mainApp> createState() => _mainAppState();
}

class _mainAppState extends State<mainApp> {
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
              icon: Icon(Icons.access_alarms_sharp),
              selectedIcon: Icon(Icons.home_outlined),
              label: 'Previous',
            ),
            NavigationDestination(
              icon: Icon(Icons.add_alert_sharp),
              selectedIcon: Icon(Icons.search_outlined),
              label: 'Warning',
            )
          ],
        ),
        body: <Widget>[
          WeekpreviousPage(),
          //WheaterwarningPage()
        ][_selectedIndex],
      ),
    );
  }
}///oi
