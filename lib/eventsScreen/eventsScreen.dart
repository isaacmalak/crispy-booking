import 'package:crispy_booking/components/searchbar.dart';
import 'package:crispy_booking/details/event_details_reservation_details.dart';
import 'package:crispy_booking/details/event_details_sold_out.dart';

import '../components/appBar.dart';
import '../components/bottomNavBar.dart';
import '../components/eventsContainer.dart';
import '../components/searchbar.dart';
import '../constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Eventsscreen extends StatefulWidget {
  const Eventsscreen({super.key});

  @override
  State<Eventsscreen> createState() => _EventsscreenState();
}

class _EventsscreenState extends State<Eventsscreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: const appBottomNavBar(screenNumber: 1),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 20),
                const CustomSearchBar(),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffECECED), width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xffECECED),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: w * 0.41,
                              decoration: BoxDecoration(
                                color: selectedIndex == 0
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Up coming',
                                  style: TextStyle(
                                    color: selectedIndex == 0
                                        ? Colors.black
                                        : Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: w * 0.41,
                              decoration: BoxDecoration(
                                color: selectedIndex == 1
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Past',
                                  style: TextStyle(
                                    color: selectedIndex == 1
                                        ? Colors.black
                                        : Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Most Popular',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
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
                                        const EventReservationDetails()));
                          },
                          child: const Eventscontainer(img: Assets.eventImg1)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EventReservationDetails()));
                          },
                          child: const Eventscontainer(img: Assets.eventImg2)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Events in nov',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
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
                                        const EventReservationDetails()));
                          },
                          child: const Eventscontainer(img: Assets.eventImg3)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EventReservationDetails()));
                          },
                          child: const Eventscontainer(img: Assets.eventImg4)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
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
                                        const EventReservationDetails()));
                          },
                          child: const Eventscontainer(img: Assets.eventImg3)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EventReservationDetails()));
                          },
                          child: const Eventscontainer(img: Assets.eventImg4)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        )));
  }
}
