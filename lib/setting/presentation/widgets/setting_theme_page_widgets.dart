import 'package:flutter/material.dart';

class SettingThemePage extends StatelessWidget {
  const SettingThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Notification"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          settingThemeListTile(context,"Light",true),
          settingThemeListTile(context,"Dark",false),
          settingThemeListTile(context,"Use device theme",false),
        ],
      ),
    );
  }
}

Widget settingThemeListTile(
    BuildContext context, String settingCurrencyListTile, bool status) {
  return ListTile(

      title: Text(settingCurrencyListTile),
      trailing: status
          ? const Icon(
        Icons.check_circle,
        color: Colors.deepPurple,
      )
          : null);
}
