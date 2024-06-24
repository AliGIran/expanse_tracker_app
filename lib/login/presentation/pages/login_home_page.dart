import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginHomePage extends StatelessWidget {
  const LoginHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: const [Gain(), Know(), Plan()],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * .7,
                autoPlayAnimationDuration: const Duration(seconds: 3),
                enableInfiniteScroll: false,
              ),
            ),
            const Gap(30),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child:
                  FilledButton(onPressed: () {}, child: const Text("Sign Up")),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: FilledButton.tonal(
                    onPressed: () {}, child: const Text("Log In"))),
          ],
        ),
      ),
    );
  }
}

class Gain extends StatelessWidget {
  const Gain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child:
                Image.asset("assets/images/GainTotalControlOfYourMoney.png")),
        Text("Gain total control \n of your money",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge),
        const Text(
          "Become your own money manager and make every cent count",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class Know extends StatelessWidget {
  const Know({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Image.asset("assets/images/KnowWhereYourMoneyGoes.png")),
        Text("Know where your money goes",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge),
        const Text(
          "Track your transaction easily, with categories and financial report",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class Plan extends StatelessWidget {
  const Plan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: Image.asset("assets/images/PlanningAhead.png")),
        Text("Planning ahead",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge),
        const Text(
          "Setup your budget for each category so you in control",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
