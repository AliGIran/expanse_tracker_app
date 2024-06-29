import 'package:flutter/material.dart';

class SettingSecurityPage extends StatelessWidget {
  const SettingSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Security"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            settingListTile(context, "PIN", true),
            settingListTile(context, "Fingerprint", false),
            settingListTile(context, "Face ID", false),

          ],
        ),
      ),
    );
  }
}

Widget settingListTile(
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
