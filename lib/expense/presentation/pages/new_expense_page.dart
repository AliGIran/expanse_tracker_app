import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewExpensePage extends StatelessWidget {
  NewExpensePage({super.key});

  final TextEditingController descriptionTextEditingController =
      TextEditingController();

  final int value = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: const BackButton(
          style: ButtonStyle(
              iconColor:
                  WidgetStatePropertyAll(Color.fromRGBO(255, 255, 255, 1))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Expense",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            children: [
              const Text(
                "How much?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\$ $value",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 64,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.5,
          maxChildSize: 0.8,
          builder: (context, scrollController) => Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 0))
                ]),
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  isExpanded: true,
                  hint: const Text("Category"),
                  // value: "CSV",
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
                const Gap(16),
                TextField(
                  controller: descriptionTextEditingController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: "Description"),
                ),
                const Gap(16),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  isExpanded: true,
                  hint: const Text("Wallet"),
                  // value: "CSV",
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
                const Gap(16),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () => showModalSheet(context),
                    label: const Text("Attachment"),
                    icon: const Icon(Icons.attach_file),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

showModalSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    showDragHandle: true,
    context: context,
    builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Card(
                  color: Theme.of(context).colorScheme.primaryContainer,

                  // color: Colors.purpleAccent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        "Camera",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        "Image",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        "Document",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
