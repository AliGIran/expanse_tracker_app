import 'package:flutter/material.dart';

import '../../data/data_sources/variables.dart';
import '../widgets/setting_language_page_widgets.dart';

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
      body: ListView.builder(
        itemCount: languageNameList.length,
        itemBuilder: (context, index) => LanguageList(
            settingCurrencyListTile: languageNameList[index][0],
            status: languageNameList[index][2]),
      ),
    );
  }
}
