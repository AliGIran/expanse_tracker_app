import 'package:flutter/material.dart';

class Draft extends StatelessWidget {
  const Draft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draft"),
        centerTitle: true,
      ),
      body: Center(
        child: FilledButton(
          onPressed: () => showModalSheet(context),
          child: const Text("Show modal sheet"),
        ),
      ),
    );
  }

  showModalSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      showDragHandle: true,
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Logout?",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text(
                  "Are you sure do you wanna logout?",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8, right: 16),
                        child: FilledButton.tonal(
                            onPressed: () {}, child: const Text("No")),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(left: 16, right: 8),
                      child: FilledButton(
                          onPressed: () {}, child: const Text("Yes")),
                    )),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
