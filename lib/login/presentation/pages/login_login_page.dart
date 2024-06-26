import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginLoginPage extends StatefulWidget {
  const LoginLoginPage({super.key});

  @override
  State<LoginLoginPage> createState() => _LoginLoginPageState();
}

class _LoginLoginPageState extends State<LoginLoginPage> {
  TextEditingController emailTextEditingController = TextEditingController();

  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LogIn"),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
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

              const Gap(30),

              //Sign up button
              SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child:
                    FilledButton(onPressed: () {}, child: const Text("LogIn")),
              ),

              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),

              const Gap(15),

              RichText(
                text: const TextSpan(
                    text: 'Don’t have an account yet? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
