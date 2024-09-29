import '../constants/assets.dart';
import '../homeSceen/widgets/homeScreenWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          notficitionBellIcon(),
          const Text('Properties',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          Image.asset(Assets.homeScreenProfilePic, width: 34),
        ],
      ),
    );
  }
}
