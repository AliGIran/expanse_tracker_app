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
      body: FilledButton(
        onPressed: () => showModalSheet(),
        child: const Text("Show modal sheet"),
      ),
    );




  }
  showModalSheet(){
    // return showModalBottomSheet(context: context, builder: (context) {
    //   return ModalBottomSheetRoute(builder: builder, isScrollControlled: isScrollControlled);
    // },);
    //

  }
}
