import 'package:flutter/material.dart';
import 'package:project_files/components/buttons.dart';
import 'package:project_files/utils/nav_constants.dart';
import 'package:project_files/utils/utils.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Set App Logo
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'lib/assets/images/logo_1.png',
                  height: 240.0,
                ),
              ),

              SizedBox(
                height: 25,
              ),

              // Title
              Text(
                'Check out new Trends.',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 18.0),
              ),

              SizedBox(
                height: 100,
              ),

              // Continue Button
              FullButton(
                  text: 'Continue',
                  onTap: () {
                    printLog('Continue Button Pressed');
                    Navigator.pushNamed(context, NavConstants.homeScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
