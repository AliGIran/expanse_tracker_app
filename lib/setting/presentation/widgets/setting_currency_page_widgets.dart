import 'package:flutter/material.dart';

import '../../data/data_sources/variables.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currencyNameList.length,
      itemBuilder: (context, index) {
        final bool currencyStatus;
        currencyStatus = currencyNameList[index][1];

        return ListTile(
          enabled: currencyStatus,
          title: Text(currencyNameList[index][0]),
          trailing: currencyStatus
              ? Icon(
                  Icons.check_circle,
                  color:
                      currencyNameList[index][1] ? Colors.purple : Colors.grey,
                )
              : null,
        );
      },
    );
  }
}

String? getFirstCurrencyNameValue() {
  for (var currency in currencyNameList) {
    if (currency[1] == true) {
      return currency[2];
    }
  }
  return null;
}
