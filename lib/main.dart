import 'package:flutter/material.dart';
import 'package:primeiroaplicativo/config_page.dart';
import 'package:primeiroaplicativo/onboarding_page.dart';

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
                icon: Icon(Icons.location_on_outlined),
                selectedIcon: Icon(Icons.location_on),
                label: 'Onboarding',
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
              OnboardingPage(),
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
