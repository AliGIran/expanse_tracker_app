import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        physics: AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                const Gap(25),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Name", hintText: 'Enter your name'),
                ),
                const Gap(35),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email", hintText: 'Enter your email'),
                ),
                const Gap(35),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove_red_eye))),
                ),
                const Gap(35),

                //Sign up button
                SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  child: FilledButton(
                      onPressed: () {}, child: const Text("Sign Up")),
                ),

                const Text(
                  "Or with",
                  style: TextStyle(color: Colors.grey),
                ),

                //todo: placeholder must be replaced by google account
                const Placeholder(
                  fallbackHeight: 40,
                ),

                const Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
