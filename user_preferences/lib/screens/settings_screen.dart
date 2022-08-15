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
          backgroundColor: Colors.red,
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                SwitchListTile.adaptive(
                  value: true,
                  title: const Text('Darkmode'),
                  onChanged: (value) {},
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 1,
                  groupValue: 1,
                  title: const Text('Masculino'),
                  onChanged: (value) {},
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 2,
                  groupValue: 1,
                  title: const Text('Femenino'),
                  onChanged: (value) {},
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: 'Fernando',
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      helperText: 'Nombre del Usuario',
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
