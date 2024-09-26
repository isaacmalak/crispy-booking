import 'package:crispy_booking/constants/assets.dart';
import 'package:flutter/material.dart';
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
        child: Image.asset(
          AssetsData.homeScreenBell,
          width: 16,
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
        AssetsData.homeScreenProfilePic,
        width: 32,
      ),
    );
  }
}

class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.sliders,
              size: 18,
              color: Color(0xff4F4B5C),
            ),
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 23,
            )));
  }
}


