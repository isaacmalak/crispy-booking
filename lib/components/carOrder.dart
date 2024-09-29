import 'package:crispy_booking/details/details_screen.dart';
import 'package:crispy_booking/details/limousine_car_details.dart';
import 'package:crispy_booking/details/order_successfully.dart';

import '../constants/assets.dart';
import 'package:flutter/material.dart';

class CarOrder extends StatelessWidget {
  final String orderState;
  const CarOrder({super.key, required this.orderState});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffECECED), width: 2),
      ),
      child: Column(
        children: [
          SizedBox(
            height: h * 0.05,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const Text(
                    'Booking ID: 123456789',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    orderState == 'done' ? Assets.donePic : Assets.acceptedPic,
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: const Color(0xffECECED),
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(Assets.carOrderPic, height: h * 0.10),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: SizedBox(
                          height: h * 0.10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Limousine',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(Assets.calendar, width: 15),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '21, Sept 2021, Monday',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: w * 0.6,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Image.asset(Assets.timeIcon,
                                              width: 15),
                                          const SizedBox(width: 5),
                                          const Text(
                                            '9:00-9:30am',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const OrderDeails(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Row(
                                          children: [
                                            const Text(
                                              'Show details',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black,
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            Image.asset(Assets.arrowRightIcon,
                                                width: 10),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
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
          const Divider(
            color: const Color(0xffECECED),
            thickness: 2,
            height: 2,
          ),
          orderState == 'done'
              ? SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: h * 0.05,
                          width: w * 0.6,
                          child: const Center(
                            child: Text(
                              'Book Again',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1A2649),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: h * 0.057,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: h * 0.05,
                          width: w * 0.43,
                          child: const Center(
                            child: Text(
                              'Call',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        color: Color(0xffECECED),
                        thickness: 2,
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: h * 0.05,
                          width: w * 0.43,
                          child: const Center(
                            child: Text('CANCEL',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffF1416D),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
