import 'package:crispy_booking/reservation/payment_info.dart';

import '../constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/back_arrow.dart';
import '../components/heart_icon.dart';
import '../components/share_icon.dart';

class BuildingDetails extends StatelessWidget {
  const BuildingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShipDetailsScreen();
  }
}

class ShipDetailsScreen extends StatelessWidget {
  const ShipDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(0.007 * screenWidth),
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentInfoScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: Size(screenWidth, screenHeight * 0.06),
                // Full width and responsive height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Reservation",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ), // Re
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.4,
                  child: Stack(
                    children: [
                      // Image section
                      SizedBox(
                        width: screenWidth,
                        height: screenHeight * 0.3, // 40% of screen height
                        child: ClipRRect(
                          // borderRadius: BorderRadius.only(
                          //   bottomLeft: Radius.circular(20),
                          //   bottomRight: Radius.circular(20),
                          // ),
                          child: Image.asset(
                            width: screenWidth,
                            height: screenHeight * 0.4,
                            Assets
                                .imagesBuilding, // Replace with your image URL
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Top Icons (use Positioned to avoid overflow)
                      Positioned(
                        top: screenHeight * 0.03, // 5% from the top
                        left: 10,
                        right: 10,
                        child: SizedBox(
                          width: screenWidth,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BackArrowWidget(),
                              Row(
                                children: [
                                  ShareIconWidget(),
                                  SizedBox(width: 20),
                                  HeartIconWidget()
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.28,
                  left: 1,
                  right: 1,
                  child: Container(
                    padding: EdgeInsets.all(0.03 * screenWidth),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title and Price row with Expanded to prevent overflow
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Title with Expanded
                            Text(
                              "Apartment",
                              style: TextStyle(
                                fontSize: 20, // Responsive font size
                                fontWeight: FontWeight.bold,
                              ),
                              overflow:
                                  TextOverflow.ellipsis, // Handle long text
                            ),
                            // Price text (constrained to avoid overflow)
                            Text(
                              "2800 LE",
                              style: TextStyle(
                                fontSize: 20, // Responsive font size
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.clip, // Clip long text
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.005),
                        // Responsive spacing
                        const Text(
                          "Heliopolis, Cairo",
                          style: TextStyle(
                              color: Color(0xff3B3B3B),
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                        ),
                        SizedBox(height: screenHeight * 0.005),
                        // Responsive spacing
                        const Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 4),
                            Text(
                              "4.5 (221 reviews)",
                              style: TextStyle(
                                  color: Color(0xff3B3B3B), fontSize: 11),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.008),
                      ],
                    ),
                  ),
                ),

                // Reservation Button
              ]),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.03 * screenWidth),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'features',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                    ),
                    SizedBox(height: screenHeight * 0.01),

                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        spacing: 0.006 *
                            screenWidth, // Horizontal space between items
                        runSpacing: 8,
                        children: [
                          const CardWidget(
                            icon: Assets.iconsBed,
                            label: '3',
                          ),
                          SizedBox(
                            width: 0.015 * screenWidth,
                          ),
                          const CardWidget(
                            icon: Assets.iconsShower,
                            label: '2',
                          ),
                          SizedBox(
                            width: 0.015 * screenWidth,
                          ),
                          const CardWidget(
                            icon: Assets.iconsWindow,
                            label: '120 m²',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Divider(
                      height: 0.017 * screenHeight,
                    ),
                    // Description section
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    // Responsive spacing
                    const Text(
                      'Renting an apartment involves entering into a formal agreement between a tenant (you) and a landlord (the property owner) to occupy a rental unit for a specified period of time, typically in exchange for monthly rent. Here\'s a breakdown of the process. Renting an apartment involves entering into a...',
                      style: TextStyle(
                        color: Color(0xff3B3B3B),
                        fontSize: 11,
                      ),
                    ),
                    Divider(
                      height: 0.017 * screenHeight,
                    ),
                    // Responsive spacing
                    // View Reviews Button
                    Container(
                      width: double.infinity,
                      height: 0.05 * screenHeight,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 0.5, color: const Color(0xffECECED))),
                      child: const Center(
                        child: Text(
                          'View 221 reviews',
                          style: TextStyle(
                              color: Color(0xff1A2649),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    const Text(
                      'Listing by',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: screenHeight * 0.008),
                    // Responsive spacing
                    // Listing by section
                    Row(
                      children: [
                        SizedBox(
                          height: 0.05 * screenHeight,
                          width: 0.2 * screenWidth,
                          child: Image.asset(
                            Assets.imagesMan,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        // Responsive spacing
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hashem Hany",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    screenWidth * 0.045, // Responsive font size
                              ),
                            ),
                            const Text(
                              "EGYPT",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff999999)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
              // Ship Details Section
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String icon;
  final String label;

  const CardWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Material(
      elevation: 1, // Elevation value (higher means more shadow)
      borderRadius: BorderRadius.circular(10), // Rounded corners (optional)
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(0.035 * screenWidth),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            SizedBox(
              height: 0.01 * screenHeight,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
