import 'package:flutter/material.dart';

int balanceValue = 9400;
int incomeValue = 5000;
int expenseValue = 1200;

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.deepPurpleAccent,
              ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text("account Balance"),
            Text(
              "\$ $balanceValue ",
              style: const TextStyle(fontSize: 50),
            ),
            Row(
              children: [
                //income
                Card(
                  color: Colors.greenAccent,
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
                          Text(
                            "\$ $incomeValue",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                //Expenses
                Card()
              ],
            )
          ],
        ),
      ),
    );
  }
}
