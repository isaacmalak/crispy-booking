import 'package:crispy_booking/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeartIconWidget extends StatelessWidget {
  const HeartIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 0.12 * screenWidth,
        height: 0.05 * screenHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Center(
          child: SvgPicture.asset(
            Assets.iconHeartIcon,
            width: 0.05 * screenWidth, // Size you want for the SVG icon
            height: 0.02 * screenHeight, // Size you want for the SVG icon
            fit: BoxFit.contain, // Ensure the image stays within bounds
          ),
        ),
      ),
    );
  }
}
