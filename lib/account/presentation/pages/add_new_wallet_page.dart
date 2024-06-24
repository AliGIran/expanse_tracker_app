import 'dart:math';

import 'package:flutter/material.dart';

class AddNewWalletPage extends StatefulWidget {
  const AddNewWalletPage({super.key});

  @override
  State<AddNewWalletPage> createState() => _AddNewWalletPageState();
}

class _AddNewWalletPageState extends State<AddNewWalletPage> {
  TextEditingController walletNameTextEditingController =
      TextEditingController();

  TextEditingController walletTypeTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Add new account",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white70,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Balance",
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    "\$ ${Random().nextInt(500).toString()}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                ],
              ),
            ),
            BottomSheet(
              onClosing: () {},
              builder: (context) {
                return Container(
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).size.height * .15),
                  width: MediaQuery.of(context).size.width * 1,
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey),
                            labelText: "Wallet name"),
                        controller: walletNameTextEditingController,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          labelText: "Wallet type",
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: walletTypeTextEditingController,
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.deepPurple,
          onPressed: () {},
          label: const Text(
            "Continue",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
