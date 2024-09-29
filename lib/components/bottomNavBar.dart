import 'dart:developer';

import 'package:crispy_booking/setting/setting_screen.dart';

import '../constants/assets.dart';
import '../homeSceen/view/homeSceen.dart';
import '../ordersScreen/ordersScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class appBottomNavBar extends StatelessWidget {
  final int screenNumber;
  const appBottomNavBar({super.key, required this.screenNumber});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.navHomeIcon,
            colorFilter: screenNumber == 1
                ? const ColorFilter.mode(Color(0xff1A2649), BlendMode.srcIn)
                : const ColorFilter.mode(Color(0xff999999), BlendMode.srcIn),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            screenNumber == 2 ? Assets.navOrdersIconOpen : Assets.navOrdersIcon,
            colorFilter: screenNumber == 2
                ? const ColorFilter.mode(Color(0xff1A2649), BlendMode.srcIn)
                : const ColorFilter.mode(Color(0xff999999), BlendMode.srcIn),
          ),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.navSettingsIcon,
            colorFilter: screenNumber == 3
                ? const ColorFilter.mode(Color(0xff1A2649), BlendMode.srcIn)
                : const ColorFilter.mode(Color(0xff999999), BlendMode.srcIn),
          ),
          label: 'Setting',
        ),
      ],
      currentIndex: 0,
      showUnselectedLabels: true,
      selectedFontSize: 16,
      unselectedFontSize: 16,
      unselectedItemColor: const Color(0xff9CA3AF),
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
        color: Color(0xff9CA3AF),
      ),
      selectedLabelStyle: const TextStyle(
        fontSize: 16,
        color: Color(0xff1A2649),
      ),
      selectedItemColor: const Color(0xff1A2649),
      onTap: (index) {
        if (index == 0) {
          if (screenNumber != 1) {
            log('going to home');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Homesceen(),
              ),
            );
          }
        } else if (index == 1) {
          if (screenNumber != 2) {
            log('going to orders');

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Ordersscreen(),
              ),
            );
          }
        } else if (index == 2) {
          if (screenNumber != 3) {
            log('going to setting');

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingScreen(),
              ),
            );
          }
        }
      },
    );
  }
}
