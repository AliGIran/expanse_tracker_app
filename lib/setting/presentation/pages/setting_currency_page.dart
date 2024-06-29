import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          currencyListTile(context, "United States (USD)"),
          currencyListTile(context, "Indonesia (IDR)"),
          currencyListTile(context, "Japan (JPY)"),
          currencyListTile(context, "Russia (RUB)"),
          currencyListTile(context, "Germany (EUR)"),
          currencyListTile(context, "Korea (WON)"),
        ],
      ),
    );
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
