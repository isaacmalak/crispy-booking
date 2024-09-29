import 'package:crispy_booking/components/bottomNavBar.dart';
import 'package:crispy_booking/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // return SvgPicture.asset(
    //   Assets.person2,
    // );
    return Scaffold(
      bottomNavigationBar: const appBottomNavBar(
        screenNumber: 3,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 0.05 * screenWidth, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 0.09 * screenWidth,
                      height: 0.04 * screenHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xFFECECED), width: 2),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          Assets.iconBackArrow,
                          width: 0.03 *
                              screenWidth, // Size you want for the SVG icon
                          height: 0.015 *
                              screenHeight, // Size you want for the SVG icon
                          fit: BoxFit
                              .contain, // Ensure the image stays within bounds
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.3),
                  const Text(
                    'Setting',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              InkWell(
                child: Container(
                  height: 0.07 * screenHeight,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(81, 83, 83, 83),
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 0.15 * screenWidth,
                        height: 0.04 * screenHeight,
                        child: Image.asset(
                          "assets/images/person4.png",
                        ),
                      ),
                      SizedBox(width: 0.05 * screenWidth),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hashem Hany",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "75***********530",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      SizedBox(width: 0.33 * screenWidth),
                      Image.asset(
                        "assets/images/arrow.png",
                        width: 0.02 * screenWidth,
                        height: 0.02 * screenHeight,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0.02 * screenHeight),
              Container(
                height: 0.15 * screenHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(81, 83, 83, 83),
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.06 * screenWidth, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Change password',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          Image.asset(
                            "assets/images/arrow.png",
                            width: 0.02 * screenWidth,
                            height: 0.02 * screenHeight,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.06 * screenWidth, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Language',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          SizedBox(width: 0.4 * screenWidth),
                          const Text(
                            "English",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Image.asset(
                            "assets/images/arrow.png",
                            width: 0.02 * screenWidth,
                            height: 0.02 * screenHeight,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.06 * screenWidth, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Refresh app sevices',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          Image.asset(
                            "assets/images/arrow.png",
                            width: 0.02 * screenWidth,
                            height: 0.02 * screenHeight,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.02 * screenHeight),
              Container(
                height: 0.15 * screenHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(81, 83, 83, 83),
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.06 * screenWidth, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Help & Support',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          Image.asset(
                            "assets/images/arrow.png",
                            width: 0.02 * screenWidth,
                            height: 0.02 * screenHeight,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.06 * screenWidth, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('About',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          Image.asset(
                            "assets/images/arrow.png",
                            width: 0.02 * screenWidth,
                            height: 0.02 * screenHeight,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.06 * screenWidth, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Logout',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFF1416D),
                              )),
                          Image.asset(
                            "assets/images/logout.png",
                            width: 0.06 * screenWidth,
                            height: 0.03 * screenHeight,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
