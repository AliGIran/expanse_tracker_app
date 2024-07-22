import 'package:expense_tracker_app/setting/data/data_sources/variables.dart';
import 'package:flutter/material.dart';

class LanguageList extends StatelessWidget {
  const LanguageList(
      {super.key, required this.settingCurrencyListTile, required this.status});

  final bool status;
  final String settingCurrencyListTile;

  @override
  Widget build(BuildContext context) {
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
}

String? getFirstLanguageNameValue() {
  for (var language in languageNameList) {
    if (language[2] == true) {
      return language[1];
    }
  }
  return null;
}
