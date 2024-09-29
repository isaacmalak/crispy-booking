import 'package:crispy_booking/reservation/payment_info.dart';

import 'details/limousine_car_details.dart';
import 'details/suv_car_details.dart';
import 'eventsScreen/eventsScreen.dart';
import 'homeSceen/view/homeSceen.dart';
import 'login/login_screen.dart';
import 'ordersScreen/ordersScreen.dart';
import 'properties/propertiesScreen.dart';
import 'register/register_screen.dart';
import 'searchScreen/SearchScreen2.dart';
import 'searchScreen/searchScreen.dart';
import 'yachts-carsScreen/carsScreen.dart';
import 'yachts-carsScreen/yachtsScreen.dart';
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
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(),
        useMaterial3: true,
      ),
      home: const LoginScreen (),
    );
  }
}
