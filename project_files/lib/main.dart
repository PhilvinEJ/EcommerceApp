import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:project_files/models/providers/cart_provider.dart';
import 'package:project_files/screens/about_screen.dart';
import 'package:project_files/screens/cart_screen.dart';
import 'package:project_files/screens/home_screen.dart';
import 'package:project_files/screens/onboarding_screen.dart';
import 'package:project_files/screens/shop_screen.dart';
import 'package:project_files/themes/light_theme.dart';
import 'package:project_files/utils/nav_constants.dart';
import 'package:project_files/utils/utils.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Set status bar color etc
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey[200],
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    // For Android (dark icons)
    statusBarBrightness: Brightness.light, // For iOS (dark icons)
  ));

  // App Starts Here
  runApp(const ECApp());
}

class ECApp extends StatefulWidget {
  const ECApp({super.key});

  @override
  State<ECApp> createState() => _ECAppState();
}

class _ECAppState extends State<ECApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    printLog("Pausing");
    await Future.delayed(const Duration(seconds: 3));
    printLog("Un pausing");
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartProvider(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              routes: {
                NavConstants.onboardingScreen: (context) => OnboardingScreen(),
                NavConstants.homeScreen: (context) => HomeScreen(),
                NavConstants.shopScreen: (context) => ShopScreen(),
                NavConstants.cartScreen: (context) => CartScreen(),
                NavConstants.aboutScreen: (context) => AboutScreen(),
              },
              home: OnboardingScreen(),
            ));
  }
}
