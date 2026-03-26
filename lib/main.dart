import 'package:flutter/material.dart';
import 'package:primeiroaplicativo/screens/config_page.dart';
import 'package:primeiroaplicativo/screens/home_page.dart';
import 'package:primeiroaplicativo/screens/search_page.dart';

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
  ThemeMode _themeMode = ThemeMode.light;

  void _onThemeChanged(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined),
              selectedIcon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: 'Config',
            )
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(),
            SearchPage(),
            ConfigPage(
              isDark: _themeMode == ThemeMode.dark,
              onThemeChanged: _onThemeChanged,
            )
          ],
        )
      ),
    );
  }
}
