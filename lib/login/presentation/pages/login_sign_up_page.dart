import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginSignUpPage extends StatefulWidget {
  const LoginSignUpPage({super.key});

  @override
  State<LoginSignUpPage> createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  TextEditingController nameTextEditingController = TextEditingController();

  TextEditingController emailTextEditingController = TextEditingController();

  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Gap(25),

                TextField(
                  controller: nameTextEditingController,
                  decoration: const InputDecoration(
                      labelText: "Name", hintText: 'Enter your name'),
                ),

                const Gap(35),

                TextField(
                  controller: emailTextEditingController,
                  decoration: const InputDecoration(
                      labelText: "Email", hintText: 'Enter your email'),
                ),

                const Gap(35),

                TextFormField(
                  controller: passwordTextEditingController,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye))),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: ListTile(
                      leading: Checkbox(
                        value: false,
                        onChanged: (bool? value) {
                          value = true;
                        },
                      ),
                      title: RichText(
                        text: const TextSpan(
                          text: 'By signing up, you agree to the  ',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms of Service and Privacy Policy',
                              style: TextStyle(color: Colors.purpleAccent),
                            ),
                          ],
                        ),
                      )),
                ),

                const Gap(15),

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
                const Gap(30),
                //todo: placeholder must be replaced by google account
                const Placeholder(
                  fallbackHeight: 40,
                ),

                const Gap(30),
                RichText(
                  text: const TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: 'LogIn',
                            style: TextStyle(
                              color: Colors.deepPurple,
                            ))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
