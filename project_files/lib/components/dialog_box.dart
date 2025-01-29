import 'package:flutter/material.dart';
import 'package:project_files/themes/colors.dart';

import 'buttons.dart';

class DialogBox extends StatelessWidget {
  const DialogBox(
      {super.key,
      required this.onLeftTap,
      required this.onRightTap,
      this.leftText = "Cancel",
      this.rightText = "Save",
      required this.titleText,
      this.height = 300});

  final VoidCallback onLeftTap;
  final VoidCallback onRightTap;
  final String leftText;
  final String rightText;
  final String titleText;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      content: SizedBox(
        height: height,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Title
              Text(titleText,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500)),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Cancel Button
                  PrimaryButton(text: leftText, onPressed: onLeftTap),

                  // Save Button
                  PrimaryButton(text: rightText, onPressed: onRightTap)
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
