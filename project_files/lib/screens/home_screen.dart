import 'package:flutter/material.dart';
import 'package:project_files/components/bottom_nav_bar.dart';
import 'package:project_files/screens/shop_screen.dart';
import 'package:project_files/themes/colors.dart';
import 'package:project_files/utils/nav_constants.dart';

import '../utils/utils.dart';
import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    printLog('Bottom Bar Index: $index');
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // Shop Screen
    ShopScreen(),

    // Cart Screen
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Icon(
                    Icons.menu,
                    color: black,
                  ),
                )),
          )),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Top part of drawer
            Column(
              children: [
                // Logo
                DrawerHeader(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary)),
                  child: Image.asset(
                    'lib/assets/images/e_com.png',
                    width: 200.0,
                  ),
                ),

                // List
                ListTile(
                  leading: Icon(Icons.home,
                      color: Theme.of(context).colorScheme.secondary),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.info,
                      color: Theme.of(context).colorScheme.secondary),
                  title: Text(
                    'About',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, NavConstants.aboutScreen);
                  },
                ),
              ],
            ),

            // Bottom part of drawer
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text(
                  'Logout',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
