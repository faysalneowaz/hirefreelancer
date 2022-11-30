import 'package:flutter/material.dart';
import 'package:hirefreelancer/constant.dart';
import 'package:hirefreelancer/widgets/button.dart';
import 'package:hirefreelancer/screens/dashboardscreen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "freelance.com.bd",
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Image.asset("assets/splashdemo.png"),
              const Text(
                "Find \nfreelacers",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Button(
                  bgColor: primaryColor,
                  shColor: blackColor,
                  elevation: 4.0,
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.width / 6,
                  radius: 15.0,
                  btntext: "Get Started",
                  txtColor: whiteColor,
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardScreen(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(
                    text: "Already Have an account!  ",
                    style: TextStyle(color: darkgrayColor),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
