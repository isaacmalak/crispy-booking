import 'package:crispy_booking/constants/assets.dart';
import 'package:crispy_booking/details/order_fail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentPersonalDetailsScreen extends StatelessWidget {
  const PaymentPersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 0.109 * screenWidth,
                height: 0.045 * screenHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFECECED), width: 2),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    Assets.iconBackArrow,
                    width: 0.03 * screenWidth, // Size you want for the SVG icon
                    height:
                        0.015 * screenHeight, // Size you want for the SVG icon
                    fit: BoxFit.contain, // Ensure the image stays within bounds
                  ),
                ),
              ),
            ),
            const Text(
              'Payment',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 0.109 * screenWidth,
                height: 0.045 * screenHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFECECED), width: 2),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    Assets.heart,
                    width: 0.03 * screenWidth, // Size you want for the SVG icon
                    height:
                        0.02 * screenHeight, // Size you want for the SVG icon
                    fit: BoxFit.contain, // Ensure the image stays within bounds
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * .03),
            const Text(
              'Nationality ID or Passport number',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: screenHeight * 0.007),
            SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: SvgPicture.asset(
                        "assets/icons/lg_right_icon.svg",
                      )),
                  focusColor: Colors.black.withOpacity(.5),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Enter id number',
                  hintStyle:
                      const TextStyle(fontSize: 14, color: Color(0xFFA1A1A1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            const Text(
              'Card name',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: screenHeight * 0.007),
            SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: SvgPicture.asset(
                        "assets/icons/lg_right_icon.svg",
                      )),
                  focusColor: Colors.black.withOpacity(.5),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Name',
                  hintStyle:
                      const TextStyle(fontSize: 14, color: Color(0xFFA1A1A1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            const Text(
              'Card number',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: screenHeight * 0.007),
            SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: SvgPicture.asset(
                        "assets/icons/lg_right_icon.svg",
                      )),
                  focusColor: Colors.black.withOpacity(.5),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Number',
                  hintStyle:
                      const TextStyle(fontSize: 14, color: Color(0xFFA1A1A1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Expiry Month',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: screenHeight * 0.007),
                      SizedBox(
                        height: 45,
                        width: screenWidth * 0.43,
                        child: TextField(
                          decoration: InputDecoration(
                            //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            suffixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 7),
                                child: SvgPicture.asset(
                                  "assets/icons/lg_right_icon.svg",
                                )),
                            focusColor: Colors.black.withOpacity(.5),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Number',
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Color(0xFFA1A1A1)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Expiry Year',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: screenHeight * 0.007),
                      SizedBox(
                        height: 45,
                        width: screenWidth * 0.43,
                        child: TextField(
                          decoration: InputDecoration(
                            //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            suffixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 7),
                                child: SvgPicture.asset(
                                  "assets/icons/lg_right_icon.svg",
                                )),
                            focusColor: Colors.black.withOpacity(.5),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Number',
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Color(0xFFA1A1A1)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            const Text(
              'CCV',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: screenHeight * 0.007),
            SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: SvgPicture.asset(
                        "assets/icons/lg_right_icon.svg",
                      )),
                  focusColor: Colors.black.withOpacity(.5),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: '3 Numbers',
                  hintStyle:
                      const TextStyle(fontSize: 14, color: Color(0xFFA1A1A1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: screenHeight * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.fromBorderSide(BorderSide(
            color: Colors.black.withOpacity(0.1),
            width: 1,
          )),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "4000 LE",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text("Total"),
              ],
            ),
//            SizedBox(width: screenWidth * 0.02),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.035),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 10, 0, 78),
                  minimumSize: Size(0.65 * screenWidth, 0.055 * screenHeight),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderFail(),
                    ),
                  );
                },
                child: const Text(
                  "Pay",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
