import 'package:crispy_booking/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notficitionBellIcon extends StatelessWidget {
  const notficitionBellIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffECECED),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          Assets.homeScreenBell,
          width: 24,
        ),
      ),
    );
  }
}

class profilePic extends StatelessWidget {
  const profilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffECECED),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        Assets.homeScreenProfilePic,
        width: 40,
      ),
    );
  }
}

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ballot_outlined),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings_outlined,
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
        index == 1
            ? null
            : index == 2
                ? null
                : null;
      },
    );
  }
}

List categories = [
  {
    'name': 'Properties',
    'icon': Assets.properties,
  },
  {
    'name': 'Cars',
    'icon': Assets.carPic,
  },
  {
    'name': 'Electric',
    'icon': Assets.electricPic,
  },
  {
    'name': 'Events',
    'icon': Assets.eventsPic,
  },
  {
    'name': 'Yacht',
    'icon': Assets.yachtPic,
  },
];
