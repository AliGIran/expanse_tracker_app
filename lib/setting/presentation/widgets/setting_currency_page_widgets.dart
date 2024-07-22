import 'package:flutter/material.dart';

class CurrencyList extends StatelessWidget {
  CurrencyList({super.key});

  final List currencyNameList = [
    ["United States (USD)", true],
    ["Indonesia (IDR)", false],
    ["Japan (JPY)", false],
    ["Russia (RUB)", false],
    ["Germany (EUR)", false],
    ["Korea (WON)", false]
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currencyNameList.length,
      itemBuilder: (context, index) => ListTile(
        enabled: currencyNameList[index][1],
        title: Text(currencyNameList[index][0]),
        trailing: Icon(
          Icons.check_circle,
          color: currencyNameList[index][1] ? Colors.purple : Colors.grey,
        ),
      ),
    );
  }
}
