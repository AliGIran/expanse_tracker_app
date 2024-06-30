import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      body: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 46,
            horizontal: 16),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("What data do your want to export?"),
            ),
            DropdownButton<String>(
              isExpanded: true,
              value: "All",
              items: <String>['All', 'Income', 'Expenses'].map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                value = value;
              },
            ),
            const Gap(24),
            Container(
                alignment: Alignment.centerLeft,
                child: const Text("When date range?")),
            DropdownButton<String>(
              isExpanded: true,
              value: "Last 30 days",
              items: <String>['Last 30 days', 'Last week', 'Last day']
                  .map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                value = value;
              },
            ),
            const Gap(24),
            Container(
                alignment: Alignment.centerLeft,
                child: const Text("What format do you want to export?")),
            DropdownButton<String>(
              isExpanded: true,
              value: "CSV",
              items: <String>['CSV', 'XML', 'PDF'].map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                value = value;
              },
            ),
          ],
        ),
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
