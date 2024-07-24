import 'package:flutter/material.dart';

class ExportCompletedPage extends StatelessWidget {
  const ExportCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Export Data"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/ExportData.png"),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Check your email, we send you the financial report."
                " In certain cases, it might take a little longer,"
                " depending on the time period and the volume of activity.",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: const Text(
            "Back to Home",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
