import 'package:crispy_booking/components/searchbar.dart';
import 'package:crispy_booking/details/building_details.dart';
import 'package:crispy_booking/eventsScreen/eventsScreen.dart';
import 'package:crispy_booking/searchScreen/searchScreen.dart';
import 'package:crispy_booking/yachts-carsScreen/carsScreen.dart';
import 'package:crispy_booking/yachts-carsScreen/yachtsScreen.dart';

import '../../components/bottomNavBar.dart';
import '../../components/searchbar.dart';
import '../../components/vehicleForSale.dart';
import '../../constants/assets.dart';
import '../widgets/homeScreenWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homesceen extends StatelessWidget {
  const Homesceen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const appBottomNavBar(screenNumber: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cairo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 28,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        notficitionBellIcon(),
                        SizedBox(
                          width: 16,
                        ),
                        profilePic(),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: h * 0.01),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchScreen()));
                      },
                      child: const CustomSearchBar())),
              SizedBox(height: h * 0.015),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text('Categories',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      // color: Colors.black,
                    )),
              ),
              SizedBox(height: h * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: SizedBox(
                  height: w * 0.26,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: w * 0.21,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: index == 0
                                ? const Color(0xff1A2649)
                                : Colors.transparent,
                            border: Border.all(
                              color: const Color(0xff1A2649),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              index == 1
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CarsScreen()))
                                  : index == 3
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Eventsscreen()))
                                      : index == 4
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const YachtsScreen()))
                                          : null;
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  categories[index]['icon'],
                                  // height: 24,
                                  width: w * 0.08,
                                ),
                                SizedBox(height: w * 0.01),
                                Text(
                                  categories[index]['name'],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: index == 0
                                        ? Colors.white
                                        : Color(0xff1A2649),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(height: h * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: h * 0.22,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(Assets.containerBackground),
                        fit: BoxFit.cover,
                        opacity: 0.4),
                    color: const Color(0xFF243B7E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              height: h * 0.15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: w * 0.5,
                                    child:
                                        const Text('You have multiple promos',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                            )),
                                  ),
                                  SizedBox(height: h * 0.03),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Terms apply ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: ' Inter',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset(Assets.onlineShoppingLogo,
                              width: w * 0.35),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(Assets.dotIndecator, width: w * 0.1),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Homes for rent',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: h * 0.26,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BuildingDetails()));
                            },
                            child: Container(
                              width: w * 0.47,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xffECECED),
                                  width: 2.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    Assets.apartment1,
                                    width: double.infinity,
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Apartment',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '2800 LE',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text(
                                              '2',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            SvgPicture.asset(
                                              Assets.bed,
                                              width: 15,
                                            ),
                                            SizedBox(width: 15),
                                            const Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            SvgPicture.asset(
                                              Assets.bath,
                                              width: 15,
                                            ),
                                            SizedBox(width: 15),
                                            const Text(
                                              '120 m',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SvgPicture.asset(Assets.layers,
                                                width: 15),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          'Heliopolis, cairo',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          '3 Days ago',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BuildingDetails()));
                            },
                            child: Container(
                              width: w * 0.47,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xffECECED),
                                  width: 2.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    Assets.apartment2,
                                    width: double.infinity,
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Apartment',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '2800 LE',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text(
                                              '2',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            SvgPicture.asset(
                                              Assets.bed,
                                              width: 15,
                                            ),
                                            SizedBox(width: 15),
                                            const Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            SvgPicture.asset(
                                              Assets.bath,
                                              width: 15,
                                            ),
                                            SizedBox(width: 15),
                                            const Text(
                                              '120 m',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SvgPicture.asset(Assets.layers,
                                                width: 15),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          'Heliopolis, cairo',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          '3 Days ago',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Cars for sale',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarsScreen()));
                      },
                      child: const VehicleForSale(
                          vehicleType: 'car', img: Assets.carForSale1),
                    ),
                    const SizedBox(height: 20),
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
