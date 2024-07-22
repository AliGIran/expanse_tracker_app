import 'package:flutter/material.dart';

import '../../../core/data/page_routes.dart';
import '../widgets/setting_home_page_widgets.dart';

class SettingHomePage extends StatelessWidget {
  const SettingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          // Currency
          SettingHomePageListTile(itemTitle: "Currency", secondTitle: "USD",routeName: settingCurrencyPage,),

          //Language
          SettingHomePageListTile(
              itemTitle: "Language", secondTitle: "English",routeName: settingLanguagePage,),

          //Theme
          SettingHomePageListTile(itemTitle: "Theme", secondTitle: "Dark",routeName: settingThemePage),

          //Security
          SettingHomePageListTile(
              itemTitle: "Security", secondTitle: "Fingerprint",routeName: settingSecurityPage),

          //Notification
          SettingHomePageListTile(itemTitle: "Notification", secondTitle: "",routeName: settingNotificationPage),

          ListTile(),

          //About
          SettingHomePageListTile(itemTitle: "About", secondTitle: ""),

          //Help
          SettingHomePageListTile(itemTitle: "Help", secondTitle: ""),
        ],
      ),
    );
  }
}
