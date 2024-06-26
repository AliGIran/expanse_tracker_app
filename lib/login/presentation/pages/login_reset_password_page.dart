import 'package:flutter/material.dart';

class LoginResetPasswordPage extends StatefulWidget {
  const LoginResetPasswordPage({super.key});

  @override
  State<LoginResetPasswordPage> createState() => _LoginResetPasswordPageState();
}

class _LoginResetPasswordPageState extends State<LoginResetPasswordPage> {

  TextEditingController newPasswordTextEditingController = TextEditingController();
  TextEditingController newPasswordTextEditingController2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Reset Password"),
          centerTitle: true,
          leading: const BackButton()
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(child: Column(
          children: [

            TextField(
              controller:newPasswordTextEditingController,
              decoration: const InputDecoration(
                labelText: "New Password",
                  hintText: "Enter yore new password here"
              ),
            ),

            TextField(
              controller:newPasswordTextEditingController2,
              decoration: const InputDecoration(
                  labelText: "Retype new password",
                  hintText: "Retype yore password here"
              ),
            ),




            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * .9,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Continue"),
              ),)
          ],
        ),),
      ),
    );
  }
}
