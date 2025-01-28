import 'package:flutter/material.dart';

class FullButton extends StatelessWidget {
  const FullButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[900], borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child:
              Center(child: Text(text, style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
