import 'package:flutter/material.dart';
import 'screens/freezer_screen.dart';
import 'screens/add_item_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      themeMode: ThemeMode.system,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Freezer Buddy',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.ac_unit_sharp), text: 'Freezer'),
                Tab(icon: Icon(Icons.add_circle_sharp), text: 'Add Item'),
                Tab(icon: Icon(Icons.settings_sharp), text: 'Settings'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [FreezerScreen(), AddItemScreen(), SettingsScreen()],
          ),
        ),
      ),
    );
  }
}
