import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginForgotPasswordPage extends StatelessWidget {
  LoginForgotPasswordPage({super.key});

  final TextEditingController emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Don’t worry. \nEnter your email and we’ll send you a link to reset your password.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              TextField(
                controller: emailTextEditingController,
                decoration: const InputDecoration(
                    labelText: "Email", hintText: 'Enter your email'),
              ),

              const Gap(30),

              SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text("Continue"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
