import 'package:crispy_booking/details/limousine_car_details.dart';
import 'package:crispy_booking/details/suv_car_details.dart';
import 'package:crispy_booking/searchScreen/SearchScreen2.dart';

import '../components/appBar.dart';
import '../components/bottomNavBar.dart';
import '../components/searchbar.dart';
import '../components/vehicleForSale.dart';
import '../constants/assets.dart';
import 'package:flutter/material.dart';

class CarsScreen extends StatelessWidget {
  CarsScreen({super.key});
  final List carsList1 = [
    {
      'img': Assets.carForSale1,
    },
    {
      'img': Assets.carForSale2,
    },
  ];
  final List carsList2 = [
    {
      'img': Assets.carForSale3,
    },
    {
      'img': Assets.carForSale4,
    },
    {
      'img': Assets.carForSale5,
    },
    {
      'img': Assets.carForSale6,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const appBottomNavBar(screenNumber: 1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchScreen2()));
                  },
                  child: const CustomAppBar()),
              const SizedBox(height: 20),
              const CustomSearchBar(),
              const SizedBox(height: 20),
              const Text(
                'Cars for sale',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: carsList1.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LimousineCarDetails()));
                          },
                          child: VehicleForSale(
                              vehicleType: 'car', img: carsList1[index]['img']),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Cars for Rent',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: carsList2.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuvCarDetails())),
                          child: VehicleForSale(
                              vehicleType: 'car', img: carsList2[index]['img']),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
