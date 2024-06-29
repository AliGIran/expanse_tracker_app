import 'package:flutter/material.dart';

class ExportDataHomePage extends StatelessWidget {
  const ExportDataHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Export Data"),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.deepPurple,
          icon: const Icon(
            Icons.file_download_outlined,
            color: Colors.white,
          ),
          label: const Text(
            "Export",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
