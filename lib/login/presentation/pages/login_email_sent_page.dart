import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginEmailSentPage extends StatelessWidget {
  const LoginEmailSentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/YourEmailIsOnTheWay.png"),


            const Text(
              "Your email is on the way",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),

            const Gap(25),

            const Text(
                "Check your email test@test.com and \n"
                    "follow the instructions to reset your \n"
                    "password",
            textAlign: TextAlign.center,),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Back to LogIn"),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
