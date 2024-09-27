import 'package:crispy_booking/components/text_field.dart';
import 'package:crispy_booking/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:queen_validators/queen_validators.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen(
      {super.key,
      this.nameController,
      this.phoneController,
      this.emailController,
      this.passwordController,
      this.formKey});
  final TextEditingController? phoneController;
  final TextEditingController? nameController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final GlobalKey? formKey;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * .05, horizontal: screenWidth * .07),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create an account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.w500)),
                  SizedBox(height: 0.03 * screenHeight),
                  Text("Phone number",
                      style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(height: screenHeight * 0.01),
                  MyTextField(
                    validator: qValidator([IsEgyptianPhone()]),
                    hintText: "Phone number",
                    controller: phoneController,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: 0.03 * screenHeight),
                  Text("Name", style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(height: screenHeight * 0.01),
                  MyTextField(
                    validator: qValidator([
                      MinLength(3),
                      MaxLength(20),
                      IsRequired("Name is required"),
                    ]),
                    hintText: "Hashem",
                    controller: nameController,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: 0.03 * screenHeight),
                  Row(children: [
                    Text("Email address ",
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text(" (optional)",
                        style: Theme.of(context).textTheme.labelMedium!),
                  ]),
                  SizedBox(height: screenHeight * 0.01),
                  MyTextField(
                    hintText: "hello@example.com",
                    controller: emailController,
                    validator: qValidator([const IsEmail()]),
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: 0.03 * screenHeight),
                  Text("Enter password",
                      style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(height: screenHeight * 0.01),
                  MyTextField(
                    isHide: true,
                    hintText: "************",
                    controller: passwordController,
                    validator: qValidator(
                      [
                        MinLength(8),
                        MaxLength(20),
                        IsRequired("Password is required")
                      ],
                    ),
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: 0.04 * screenHeight),
                  SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.06,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Create",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.04 * screenHeight),
                  Row(children: <Widget>[
                    const Expanded(child: Divider()),
                    Text("  or Sign up with  ",
                        style: TextStyle(color: Colors.black.withOpacity(.5))),
                    const Expanded(child: Divider()),
                  ]),
                  SizedBox(height: 0.02 * screenHeight),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 10,
                                spreadRadius: .1,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ).copyWith(
                              overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return const Color.fromARGB(
                                            255, 120, 120, 120)
                                        .withOpacity(.1); //<-- SEE HERE
                                  }
                                  return null; // Defer to the widget's default.
                                },
                              ),
                            ),
                            label: const Text('Google',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.54),
                                  fontSize: 16,
                                )),
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              Assets.google,
                              width: screenWidth * 0.05,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 10,
                                spreadRadius: .1,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ).copyWith(
                              overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return const Color.fromARGB(
                                            255, 255, 255, 255)
                                        .withOpacity(.5); //<-- SEE HERE
                                  }
                                  return null; // Defer to the widget's default.
                                },
                              ),
                            ),
                            label: const Text('Apple',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 16,
                                )),
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              colorFilter: const ColorFilter.mode(
                                  Color.fromARGB(255, 255, 255, 255),
                                  BlendMode.srcIn),
                              Assets.appleLogo,
                              width: screenWidth * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.01 * screenHeight),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 68, 77, 255),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Login here",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
