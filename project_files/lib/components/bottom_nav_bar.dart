import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, this.onTabChange});

  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: Platform.isAndroid ? 5 : 25),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey[800],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 35.0,
          onTabChange: onTabChange,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Cart',
            ),
          ]),
    );
  }
}
