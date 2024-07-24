import 'package:flutter/material.dart';

import '../../data/constants.dart';
import '../../data/variables.dart';

class ExportExpensesData extends StatelessWidget {
  const ExportExpensesData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

class ExportDataFileFormat extends StatelessWidget {
  const ExportDataFileFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: const Text("What format do you want to export?")),
        DropdownButton<String>(
          isExpanded: true,
          value: tempExportFileType,
          items: exportFileTypeList.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (value) {
            value = value;
          },
        )
      ],
    );
  }
}

class ExportDataDateRange extends StatelessWidget {
  const ExportDataDateRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: const Text("When date range?")),
        DropdownButton<String>(
          isExpanded: true,
          value: tempDateDuration,
          items: dateDurationList
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
      ],
    );
  }
}

class ExportDataTransactionType extends StatefulWidget {
  const ExportDataTransactionType({super.key});

  @override
  State<ExportDataTransactionType> createState() => _ExportDataTransactionTypeState();
}

class _ExportDataTransactionTypeState extends State<ExportDataTransactionType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: const Text("What data do your want to export?"),
        ),
        DropdownButton<String>(
          isExpanded: true,
          value: tempFileFormat,


          onChanged: (String? value) {
            setState(() {
              tempFileFormat = value!;
            });
          },




          items: fileFormatList.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),


        ),
      ],
    );
  }
}




class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {

  String _selectedValue = 'Option 1';  // Initial value


  // List of options for the dropdown
  final List<String> _dropdownOptions = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];



  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedValue,

      isExpanded: true,


      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue!;
        });
      },


      items: _dropdownOptions.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),


    );
  }
}
