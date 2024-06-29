import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          // Currency
          settingListTileItem(context, "Currency", "USD"),

          //Language
          settingListTileItem(context, "Language", "English"),

          //Theme
          settingListTileItem(context, "Theme", "Dark"),

          //Security
          settingListTileItem(context, "Security", "Fingerprint"),

          //Notification
          settingListTileItem(context, "Notification", ""),

          const ListTile(),


          //About
          settingListTileItem(context, "About", ""),

          //Help
          settingListTileItem(context, "Help", ""),
        ],
      ),
    );
  }
}

Widget settingListTileItem(
    BuildContext context, String itemTitle, String secondTitle) {
  return ListTile(
    title: Text(itemTitle),
    trailing: SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            secondTitle,
            style: const TextStyle(color: Colors.grey),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.purple,
          ),
        ],
      ),
    ),
    onTap: () {},
  );
}
