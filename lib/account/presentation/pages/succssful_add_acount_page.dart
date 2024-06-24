import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SuccessfulAddAccountPage extends StatelessWidget {
  const SuccessfulAddAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.done_rounded,
                size: 80,
                color: Colors.white,
              ),
            ),
            Gap(10),
            Text(
              "You are set!",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
