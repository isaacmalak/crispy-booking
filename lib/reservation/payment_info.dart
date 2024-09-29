import 'package:crispy_booking/constants/assets.dart';
import 'package:crispy_booking/reservation/payment_personal_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentInfoScreen extends StatefulWidget {
  const PaymentInfoScreen({super.key});

  @override
  State<PaymentInfoScreen> createState() => _PaymentInfoScreenState();
}

List<String> paymentMethods = [
  'Pay Via Debit / Credit Card',
  'Pay Via Wallet',
  'Pay Via Cash',
];

class _PaymentInfoScreenState extends State<PaymentInfoScreen> {
  String currentOption = paymentMethods[0];
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
        padding: EdgeInsets.symmetric(
          horizontal: 0.05 * screenWidth,
          vertical: 0.02 * screenHeight,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Total',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'EGP.2499,00',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 0.01 * screenHeight),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Amount Payable',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'EGP.2599,00',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black.withOpacity(0.1),
            ),
            SizedBox(height: 0.01 * screenHeight),
            const Text(
              'Apply Coupon ',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 0.007 * screenHeight),
            SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          width: 1.5,
                          color: Colors.black,
                          //style: BorderStyle.solid,
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Apply",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
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
                  hintText: 'Coupon Code',
                  hintStyle:
                      const TextStyle(fontSize: 14, color: Color(0xFFA1A1A1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.01 * screenHeight),
            const Text(
              'Pay Using',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 0.007 * screenHeight),
            Container(
              height: screenHeight * 0.06,
              decoration: BoxDecoration(
                color: (currentOption == paymentMethods[0])
                    ? const Color.fromARGB(22, 161, 149, 255)
                    : const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: (currentOption == paymentMethods[0])
                      ? const Color.fromARGB(108, 0, 0, 0)
                      : const Color(0xffececec),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: paymentMethods[0],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    },
                  ),
                  const Text(
                    'Pay Via Debit / Credit Card',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 0.22 * screenWidth),
                  SvgPicture.asset(
                    "assets/icons/visa.svg",
                    width: 0.01 * screenWidth, // Size you want for the SVG icon
                    height:
                        0.03 * screenHeight, // Size you want for the SVG icon
                    //Fit.contain, // Ensure the image stays within bounds
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.02 * screenHeight),
            Container(
              height: screenHeight * 0.06,
              decoration: BoxDecoration(
                color: (currentOption == paymentMethods[1])
                    ? const Color.fromARGB(22, 161, 149, 255)
                    : const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: (currentOption == paymentMethods[1])
                      ? const Color.fromARGB(108, 0, 0, 0)
                      : const Color.fromARGB(0, 255, 255, 255),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: paymentMethods[1],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    },
                  ),
                  const Text(
                    'Pay after the service',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 0.32 * screenWidth),
                  SvgPicture.asset(
                    "assets/icons/money.svg",
                    width:
                        0.014 * screenWidth, // Size you want for the SVG icon
                    height:
                        0.035 * screenHeight, // Size you want for the SVG icon
                    //Fit.contain, // Ensure the image stays within bounds
                  ),
                ],
              ),
            )
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
                      builder: (context) =>
                          const PaymentPersonalDetailsScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
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
