import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LoginHomePage extends StatelessWidget {
  const LoginHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CarouselSlider(
                items: [],
                options: CarouselOptions(
                autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3),

              ),
                
              ),
            ),


            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child:
                  FilledButton(
                      onPressed: () {},
                      child: const Text("Sign Up")),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: FilledButton.tonal(
                    onPressed: () {},
                    child: const Text("Log In"))),
          ],
        ),
      ),
    );
  }
}
