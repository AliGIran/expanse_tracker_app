import 'package:flutter/material.dart';

class SettingHomePageListTile extends StatelessWidget {
  const SettingHomePageListTile(
      {super.key,
      required this.itemTitle,
      required this.secondTitle,
      this.routeName = ""});

  final String itemTitle;
  final String secondTitle;
  final String routeName;

  @override
  Widget build(BuildContext context) {
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
      onTap: () {
        if (routeName != "") {
          Navigator.pushNamed(context, routeName);
        }
      },
    );
  }
}
