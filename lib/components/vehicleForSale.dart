import '../constants/assets.dart';
import 'package:flutter/material.dart';

class VehicleForSale extends StatelessWidget {
  final String vehicleType;
  final String img;

  const VehicleForSale(
      {super.key, required this.vehicleType, required this.img});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0x9DECECED),
          width: 2.0,
        ),
      ),
      height: h * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(img, width: w * 0.25),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      height: h * 0.12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: w * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  vehicleType == 'car'
                                      ? 'BMW Sport 2024'
                                      : 'Sajaa Albahr',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                const Text(
                                  '2800,000 LE',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  vehicleType == 'car'
                                      ? Assets.speedTest
                                      : Assets.personIcon,
                                  width: 15),
                              const SizedBox(width: 5),
                              Text(
                                vehicleType == 'car'
                                    ? 'New - 2024'
                                    : 'Boat Capacity: 12 Person',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            vehicleType == 'car'
                                ? 'Heliopolis, cairo'
                                : 'Nile, cairo',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
 
  }
}
