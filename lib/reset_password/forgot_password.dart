import 'package:flutter/material.dart';

import 'otp_verification.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.only(left: 0.1 * screenWidth, right: 0.1 * screenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 0.15 * screenHeight,
            ),
            const Text(
              'Forgot password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 0.01 * screenHeight,
            ),
            const Text('Enter your phone number to get the OTP',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF4B5768)),),
            SizedBox(
              height: 0.07 * screenHeight,
            ),
            const Text('Phone number',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF4B5768)),),
            SizedBox(
              height: 0.01 * screenHeight,
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color(0xFF999DA3),fontWeight: FontWeight.w100),
                enabledBorder: OutlineInputBorder(

                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(width: 1.5,color: Color(0xffD0D5DD))),
                  border: OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 0.2)),
                  hintText: "Phone number",),
            ),
            SizedBox(
              height: 0.07 * screenHeight,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OtpVerification()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                height: 0.06 * screenHeight,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Forget',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
              
          ],
        ),
      )),
    );
  }
}
