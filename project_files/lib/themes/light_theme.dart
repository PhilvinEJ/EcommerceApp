import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_files/themes/colors.dart';

ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      surface: backgroundColor,
      primary: primaryColor,
      secondary: secondaryColor,
      inversePrimary: Colors.grey.shade400,
    ),
    textTheme: GoogleFonts.robotoFlexTextTheme());
