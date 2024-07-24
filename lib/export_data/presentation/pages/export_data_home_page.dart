import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/export_data_home_page_widgets.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 16),
        child:  const Column(
          children: <Widget>[

            //to choose income or expense data to export
            ExportDataTransactionType(),

            Gap(24),

            // to choose rage of the data user wants to export
            ExportDataDateRange(),

            Gap(24),

            // to choose the format of the export data file
            ExportDataFileFormat(),


            DropdownExample()








          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // to export data the user wants to see
      floatingActionButton: const ExportExpensesData(),
    );
  }
}
