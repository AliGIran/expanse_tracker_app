import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/data/page_routes.dart';

//todo: these consts are for mockup and must be removed after logic is done

int incomeValue = 5000;
int expenseValue = 1200;
int balanceValue = incomeValue - expenseValue;

class HomePageProfileAvatarButton extends StatelessWidget {
  const HomePageProfileAvatarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, profilePage);
        },
        icon: const CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage("assets/images/avatar.jpg"),
        ));
  }
}

class HomePageNotificationIconButton extends StatelessWidget {
  const HomePageNotificationIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, settingNotificationPage);
        },
        icon: const Icon(
          Icons.notifications,
          color: Colors.deepPurpleAccent,
        ));
  }
}

class HomePageBalanceText extends StatelessWidget {
  const HomePageBalanceText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$ $balanceValue ",
      style: const TextStyle(fontSize: 50),
    );
  }
}

class HomePageIncomeCard extends StatelessWidget {
  const HomePageIncomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            const Icon(
              Icons.download,
              color: Colors.white,
              size: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Income",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                incomeValueText(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget incomeValueText() {
  return Text(
    "\$ $incomeValue",
    style: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
  );
}

class HomePageExpenseCard extends StatelessWidget {
  const HomePageExpenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            const Icon(
              Icons.upload,
              color: Colors.white,
              size: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Expense",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                expenseValueText(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget expenseValueText() {
  return Text(
    "\$ $expenseValue",
    style: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
  );
}
