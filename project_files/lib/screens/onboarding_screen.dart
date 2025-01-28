import 'package:flutter/material.dart';
import 'package:project_files/components/buttons.dart';
import 'package:project_files/utils/utils.dart';

import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                style: TextStyle(color: Colors.grey[850], fontSize: 18.0),
              ),

              SizedBox(
                height: 100,
              ),

              // Continue Button
              FullButton(
                  text: 'Continue',
                  onTap: () {
                    printLog('Continue Button Pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
