import 'dart:ffi';

import 'package:crispy_booking/detailsScreens/view/ship_details.dart';
import 'package:crispy_booking/homeSceen/view/homeSceen.dart';
import 'package:crispy_booking/login/login_screen.dart';
import 'package:crispy_booking/register/register_screen.dart';
import 'package:crispy_booking/reset_password/reset_password.dart';
import 'package:crispy_booking/searchScreen/View/searchScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF1a2649),
        fontFamily: GoogleFonts.inter().fontFamily,
        textTheme: const TextTheme(),
        useMaterial3: true,
      ),
      home: Homesceen(),
    );
  }
}
