import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarmode = false;
  int gender = 1;
  String name = 'Pedro';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
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
                  value: isDarmode,
                  title: const Text('Darkmode'),
                  onChanged: (value) {
                    setState(() {
                      isDarmode = value;
                    });
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 1,
                  groupValue: gender,
                  title: const Text('Masculino'),
                  onChanged: (value) {
                    setState(() {
                      gender = value ?? 1;
                    });
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 2,
                  groupValue: gender,
                  title: const Text('Femenino'),
                  onChanged: (value) {
                    setState(() {
                      gender = value ?? 2;
                    });
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: 'Fernando',
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
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
