import 'package:flutter/material.dart';
import 'package:user_preferences/share_preferences/preferences.dart';
import 'package:user_preferences/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkmode: ${Preferences.isDarkmode}'),
            const Divider(),
            Text('Genero: ${Preferences.gender}'),
            const Divider(),
            Text('Nombre de Usuario: ${Preferences.name}'),
            const Divider(),
          ],
        ));
  }
}
