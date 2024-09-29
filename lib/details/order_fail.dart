import 'package:crispy_booking/details/order_successfully.dart';
import 'package:flutter/material.dart';

import '../constants/assets.dart';

class OrderFail extends StatelessWidget {
  const OrderFail({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 0.2 * screenHeight,
              ),
              Image.asset(Assets.orderFailed),
              SizedBox(
                height: 0.05 * screenHeight,
              ),
              const Text(
                'Order was placed  Fail!!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 0.03 * screenHeight,
              ),
              const Text(
                "We’ve received your order and our team\n is working to get it to you as quick and\n sae as possible.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8F8F8F), // Gray color as seen in the image
                  fontSize: 14, // Adjust font size to match
                  fontWeight: FontWeight.w400, // Medium weight for smooth text
                ),
              ),
              SizedBox(
                height: 0.08 * screenHeight,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderSuccessfully()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  height: 0.06 * screenHeight,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      'Retry',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
