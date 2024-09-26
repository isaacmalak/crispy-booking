import 'package:crispy_booking/reset_password/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.only(left: 0.07* screenWidth, right: 0.1 * screenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 0.05 * screenHeight,
            ),

            
            InkWell(
              onTap: () =>   Navigator.pop(context),
              child: Container(
                width: 0.12 * screenWidth,
                height: 0.05 *screenHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFECECED),width: 2),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    Assets.iconBackArrow,
                    width: 0.05 *screenWidth,  // Size you want for the SVG icon
                    height: 0.02 * screenHeight, // Size you want for the SVG icon
                    fit: BoxFit.contain,  // Ensure the image stays within bounds
                  ),
                ),
              ),
            )

             ,
            SizedBox(
              width: double.infinity,
              height: 0.05* screenHeight,
            ),
            Text(
              'OTP Verification',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 0.01 * screenHeight,
            ),
            Text(
                'Enter the Verification code we just sent on your phone number.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF4B5768)),),
            SizedBox(
              height: 0.07 * screenHeight,
            ),
            OtpTextField(

              borderRadius: BorderRadius.circular(10),
              fieldWidth: 0.160 * screenWidth,
              keyboardType: TextInputType.phone,
              numberOfFields: 4,
              borderColor: Color(0xFFD0D5DD),
              margin: EdgeInsets.only(left: screenWidth*0.045),

              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
            )
            ,
            SizedBox(
              height: 0.09 * screenHeight,
            ),
            InkWell(
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResetPassword()),
              );},
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                height: 0.06 * screenHeight,
                width: double.infinity,
                child: Center(
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.06 * screenHeight,
            ),
            Center(child: Text('Resend OTP in 23s',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),)),
            SizedBox(
              height: 0.01 * screenHeight,
            ),
            Center(child: Text('Resend OTP',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF999DA3)),)),
          ],
        ),
      )),
    );
  }
}
