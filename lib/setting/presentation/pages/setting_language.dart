import 'package:flutter/material.dart';

class SettingLanguage extends StatelessWidget {
  const SettingLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Language"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            settingListTile(context, "English (EN)", true),
            settingListTile(context, "Indonesian (ID)", false),
            settingListTile(context, "Arabic (AR)", false),
            settingListTile(context, "Chinese (ZH)", false),
            settingListTile(context, "Dutch (NL)", false),
            settingListTile(context, "French (FR)", false),
            settingListTile(context, "German (DE)", false),
            settingListTile(context, "Italian (IT)", false),
            settingListTile(context, "Korean (KO)", false),
            settingListTile(context, "Portuguese (PT)", false),
            settingListTile(context, "Russian (RU)", false),
            settingListTile(context, "Spanish (ES)", false),
          ],
        ),
      ),
    );
  }
}

Widget settingListTile(
    BuildContext context, String settingCurrencyListTile, bool status) {
  return ListTile(
      enabled: status,
      title: Text(settingCurrencyListTile),
      trailing: status
          ? const Icon(
              Icons.check_circle,
              color: Colors.deepPurple,
            )
          : null);
}
