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
          color: Theme.of(context).colorScheme.inversePrimary,
          activeColor: Theme.of(context).colorScheme.primary,
          tabActiveBorder:
              Border.all(color: Theme.of(context).colorScheme.secondary),
          tabBackgroundColor: Theme.of(context).colorScheme.secondary,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 35.0,
          onTabChange: onTabChange,
          tabs: [
            GButton(
              icon: Icons.shopping_bag,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
          ]),
    );
  }
}
