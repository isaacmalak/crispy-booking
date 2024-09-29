import 'package:crispy_booking/constants/assets.dart';
import 'package:crispy_booking/reservation/payment_info.dart';
import 'package:crispy_booking/reservation/payment_personal_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReservationCarOptionsScreen extends StatelessWidget {
  const ReservationCarOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    Future<void> selectDate() async {
      await showDatePicker(
        context: context,
        initialDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day),
        lastDate: DateTime(2025),
        firstDate: DateTime.now(),
      );
    }

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
              'Reservation',
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
      body: ListView(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.1,
                            child: Image.asset(
                              "assets/images/car2.png",
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.04),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Sajaa Albahr',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Heliopolis, cairo',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(),
                      const Text('When do you want the trip?',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: screenHeight * 0.001),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Select Date',
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                            icon: const Icon(Icons.calendar_month_outlined),
                            onPressed: () {
                              selectDate();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: screenWidth * 0.05),
                  width: double.infinity,
                  height: screenHeight * 0.09,
                  child: ListView(
                    padding: const EdgeInsets.all(7),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: screenWidth * 0.17,
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 32, 32, 32)
                                  .withOpacity(0.2),
                              spreadRadius: .5,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            const Text(
                              "Today",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Text(
                              "",
                              style: TextStyle(fontSize: 3),
                            ),
                            const Text(
                              "21",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.048),
                      Container(
                        width: screenWidth * 0.17,
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 32, 32, 32)
                                  .withOpacity(0.2),
                              spreadRadius: .5,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            const Text(
                              "Tomorrow",
                              style: TextStyle(fontSize: 11),
                            ),
                            const Text(
                              "",
                              style: TextStyle(fontSize: 3),
                            ),
                            const Text(
                              "22",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.048),
                      Container(
                        width: screenWidth * 0.17,
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 32, 32, 32)
                                  .withOpacity(0.2),
                              spreadRadius: .5,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            const Text(
                              "Wed",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(137, 132, 131, 131)),
                            ),
                            const Text(
                              "",
                              style: TextStyle(fontSize: 3),
                            ),
                            const Text(
                              "23",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(137, 132, 131, 131)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.048),
                      Container(
                        width: screenWidth * 0.17,
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 32, 32, 32)
                                  .withOpacity(0.2),
                              spreadRadius: .5,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            const Text(
                              "Thu",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Text(
                              "",
                              style: TextStyle(fontSize: 3),
                            ),
                            const Text(
                              "24",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.048),
                      Container(
                        width: screenWidth * 0.17,
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 32, 32, 32)
                                  .withOpacity(0.2),
                              spreadRadius: .5,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            const Text(
                              "",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Text(
                              "",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Select Time range',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth * 0.39,
                            height: screenHeight * 0.056,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 32, 32, 32)
                                      .withOpacity(0.2),
                                  spreadRadius: .3,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Start : 9:00am',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.04),
                          SvgPicture.asset(
                            "assets/icons/Vector.svg",
                          ),
                          SizedBox(width: screenWidth * 0.04),
                          Container(
                            width: screenWidth * 0.39,
                            height: screenHeight * 0.056,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 32, 32, 32)
                                      .withOpacity(0.2),
                                  spreadRadius: .3,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'End : 12:00pm',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.009),

                      Divider(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text(
                        'Paid features',
                        style: TextStyle(fontSize: 16),
                      ),
                      //  Image.asset('assets/images/frame.png'),
                      SizedBox(height: screenHeight * 0.01),
                      Container(
                        width: double.infinity,
                        height: screenHeight * 0.056,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 32, 32, 32)
                                  .withOpacity(0.2),
                              spreadRadius: .3,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: screenWidth * .02),
                                Image.asset(
                                  "assets/images/elperson.png",
                                  width: screenWidth * .09,
                                  height: screenHeight * .027,
                                ),
                                const Text(
                                  'Driver ',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '500.00 LE   ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColor),
                                ),
                                const Icon(
                                  Icons.check_box_rounded,
                                  size: 15,
                                ),
                                SizedBox(width: screenWidth * .02),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.009),
                      Divider(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text(
                        'Note',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Material(
                        color: Colors.white,
                        elevation: 2.0,
                        shadowColor: Colors.black.withOpacity(.7),
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: screenWidth * 0.04),
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              focusColor: Colors.black.withOpacity(.5),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintText: 'add your notes, if any',
                              hintStyle: const TextStyle(
                                  fontSize: 11,
                                  height: -1,
                                  decoration: TextDecoration.none),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
                      builder: (context) => const PaymentInfoScreen(),
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
