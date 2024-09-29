import 'package:crispy_booking/components/text_field.dart';
import 'package:crispy_booking/constants/assets.dart';
import 'package:crispy_booking/homeSceen/view/homeSceen.dart';
import 'package:crispy_booking/register/register_screen.dart';
import 'package:crispy_booking/reset_password/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:queen_validators/queen_validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Function? onChanged;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              top: screenHeight * .1,
              left: screenWidth * .07,
              right: screenWidth * .07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w500)),
              // SizedBox(height: 60),
              Text(
                "Welcome back to M4M4",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.5),
                    ),
              ),
              SizedBox(height: 0.03 * screenHeight),
              const TabBar(
                unselectedLabelStyle: TextStyle(
                  color: Color.fromARGB(123, 0, 0, 0),
                ),
                labelColor: Colors.black,
                //indicatorPadding: EdgeInsets.symmetric(horizontal: 40),
                isScrollable: true,

                tabAlignment: TabAlignment.start,
                physics: NeverScrollableScrollPhysics(),
                splashFactory: NoSplash.splashFactory,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: UnderlineTabIndicator(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    width: 2.0,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 50, vertical: 5.0),
                ),
                dividerColor: Colors.transparent,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                tabs: [
                  Tab(
                    text: "Phone Number",
                  ),
                  Tab(
                    text: "Email",
                  ),
                ],
              ),
              SizedBox(height: 0.01 * screenHeight),
              SizedBox(
                height: screenWidth * 0.6,
                width: double.infinity,
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone number",
                            style: Theme.of(context).textTheme.bodyLarge),
                        SizedBox(height: screenHeight * 0.01),
                        MyTextField(
                          validator: qValidator([IsEgyptianPhone()]),
                          hintText: "Phone number",
                          controller: passwordController,
                          screenHeight: screenHeight,
                        ),
                        SizedBox(height: screenHeight * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Enter password",
                                style: Theme.of(context).textTheme.bodyLarge),
                            SizedBox(
                              height: 31,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const ForgotPassword();
                                  }));
                                },
                                child: Text(
                                  "Forgot password?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                        color: Colors.black,
                                      ),
                                ),
                              ),
                            )
                          ],
                        ),
                        //SizedBox(height: screenHeight * 0.01),
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
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("Email address ",
                              style: Theme.of(context).textTheme.bodyLarge),
                        ]),
                        SizedBox(height: screenHeight * 0.01),
                        MyTextField(
                          hintText: "hello@example.com",
                          controller: emailController,
                          validator: qValidator([const IsEmail()]),
                          screenHeight: screenHeight,
                        ),
                        SizedBox(height: screenHeight * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Enter password",
                                style: Theme.of(context).textTheme.bodyLarge),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const ForgotPassword();
                                }));
                              },
                              child: Text(
                                "Forgot password?",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
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
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(height: screenHeight * 0.04),
              Row(
                children: [
                  Checkbox(

                      //checkColor: Theme.of(context).primaryColor,
                      fillColor: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                        if (states.contains(WidgetState.selected)) {
                          return Theme.of(context).primaryColor;
                        }
                        return null; // Use the component's default.
                      }),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      }),
                  Text("Keep me signed in",
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homesceen()));
                  },
                  child: Text(
                    "Login",
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
                Text("  or login with  ",
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ).copyWith(
                          overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.pressed)) {
                                return const Color.fromARGB(255, 120, 120, 120)
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ).copyWith(
                          overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.pressed)) {
                                return const Color.fromARGB(255, 255, 255, 255)
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: const Text(
                    "Create an account",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
