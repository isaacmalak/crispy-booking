import '../../constants/assets.dart';
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
          width: 20,
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
