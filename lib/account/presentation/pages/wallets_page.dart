import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class WalletsPage extends StatelessWidget {
  WalletsPage({super.key});

  //temp index
  final int index = 4;

  //temp wallet balance list
  final List<int> walletBalance = [5000, 2500, 400, 550];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Wallets"),
        centerTitle: true,
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .25,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/BGwallets_balance_background.jpg"),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Wallet Balance"),
                  Text("${walletBalance.sum}")
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: index,
              itemBuilder: (context, index) => ListTile(
                // leading: const Icon(Icons.wallet),
                leading: const Icon(Icons.wallet),

                title: Text("Wallet $index"),

                trailing: Text("\$ ${walletBalance[index]} "),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: FloatingActionButton.extended(
            icon: const Icon(Icons.add),
            label: const Text(
              "Add new wallet",
            ),
            onPressed: () {
              //todo: add navigation to "AddNewWalletPage" page by clicking the button
            }),
      ),
    );
  }
}
