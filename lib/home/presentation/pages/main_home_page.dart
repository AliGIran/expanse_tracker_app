import 'package:flutter/material.dart';

import '../widgets/main_home_page_widgets.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const HomePageProfileAvatarButton(),
        actions: const [HomePageNotificationIconButton()],
      ),
      body: const Center(
        child: Column(
          children: [
            Text("account Balance"),
            HomePageBalanceText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //income
                HomePageIncomeCard(),

                //Expenses
                HomePageExpenseCard()
              ],
            )
          ],
        ),
      ),
    );
  }
}
