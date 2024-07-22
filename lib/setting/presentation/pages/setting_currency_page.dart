import 'package:flutter/material.dart';

import '../widgets/setting_currency_page_widgets.dart';

class SettingCurrencyPage extends StatelessWidget {
  const SettingCurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Currency"),
          centerTitle: true,
        ),
        body: CurrencyList());
  }
}

Widget currencyListTile(BuildContext context, String settingCurrencyListTile) {
  return ListTile(
    title: Text(settingCurrencyListTile),
    trailing: const Icon(
      Icons.check_circle,
      color: Colors.purple,
    ),
  );
}
