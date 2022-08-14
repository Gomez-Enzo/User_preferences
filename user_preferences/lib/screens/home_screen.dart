import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: SideMenu(),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}