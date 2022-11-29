import 'package:flutter/material.dart';
import 'package:hirefreelancer/constant.dart';

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
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shadowColor:
                        Colors.black, //specify the button's elevation color
                    elevation: 4.0, //buttons Material shadow
                    padding: const EdgeInsets.only(
                        top: 4.0,
                        bottom: 4.0,
                        right: 8.0,
                        left: 8.0), //specify the button's Padding
                    minimumSize: Size(
                      MediaQuery.of(context).size.width / 1.2,
                      MediaQuery.of(context).size.width / 6,
                    ), //specify the button's first: width and second: height

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0)), //used to construct ButtonStyle.mouseCursor

                    alignment:
                        Alignment.center, //set the button's child Alignment
                  ),
                  onPressed: () =>
                      {}, //set onPressed to null to see the disabled properties
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 16,
                      color: whiteColor,
                    ),
                  ),
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
