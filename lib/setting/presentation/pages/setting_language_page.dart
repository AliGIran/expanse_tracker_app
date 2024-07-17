import 'package:flutter/material.dart';

class SettingLanguagePage extends StatelessWidget {
  const SettingLanguagePage({super.key});

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
            settingLanguageListTile(context, "English (EN)", true),
            settingLanguageListTile(context, "Indonesian (ID)", false),
            settingLanguageListTile(context, "Arabic (AR)", false),
            settingLanguageListTile(context, "Chinese (ZH)", false),
            settingLanguageListTile(context, "Dutch (NL)", false),
            settingLanguageListTile(context, "French (FR)", false),
            settingLanguageListTile(context, "German (DE)", false),
            settingLanguageListTile(context, "Italian (IT)", false),
            settingLanguageListTile(context, "Korean (KO)", false),
            settingLanguageListTile(context, "Portuguese (PT)", false),
            settingLanguageListTile(context, "Russian (RU)", false),
            settingLanguageListTile(context, "Spanish (ES)", false),
          ],
        ),
      ),
    );
  }
}

Widget settingLanguageListTile(
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
