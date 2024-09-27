import 'package:crispy_booking/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

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
              width: 24,
            ),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              Assets.slider,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}