import 'package:flutter/material.dart';

class SettingNotificationPage extends StatelessWidget {
  const SettingNotificationPage({super.key});

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
          settingNotificationListTile(context,"Expense Alert","Get notification about you’re expense",true),
          settingNotificationListTile(context,"Budget","Get notification when you’re budget exceeding the limit",true),
          settingNotificationListTile(context,"Tips & Articles","Small & useful pieces of pratical financial advice",false),
        ],
      ),
    );
  }
}

Widget settingNotificationListTile(
    BuildContext context, String title, String subTitle, bool status) {
  return ListTile(
    title: Text(title),
    subtitle: Text(subTitle),
    trailing: Switch(
      value: status,
      onChanged: (bool value) {
        status = !value;
      },
    ),
  );
}
