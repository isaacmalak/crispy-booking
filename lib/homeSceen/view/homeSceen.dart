import 'package:crispy_booking/homeSceen/widgets/homeScreenWidgets.dart';
import 'package:flutter/material.dart';

class Homesceen extends StatelessWidget {
  const Homesceen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 53),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Cairo',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.arrow_drop_down),
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
           SizedBox(height: 12),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: searchTextField(),
          ),
        ],
      ),
    );
  }
}

