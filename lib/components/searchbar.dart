import 'package:crispy_booking/properties/propertiesScreen.dart';

import '../constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.06,
      decoration: BoxDecoration(
        // color: const Color(0xffECECED),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xffECECED),
          width: 2.0,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              Assets.searchIcon,
              width: 18,
            ),
          ),
          //  const SizedBox(width: 10),
          Expanded(
            child: TextField(
              onEditingComplete: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PropertiesScreen()));
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Color(0xff999DA3),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              Assets.slider,
              width: 20,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
