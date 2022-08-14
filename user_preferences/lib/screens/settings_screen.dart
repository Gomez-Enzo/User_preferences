import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/side_menu.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
