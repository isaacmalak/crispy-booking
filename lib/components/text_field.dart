import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key, required this.hintText, this.icon, required this.controller, required this.validator});
  final String hintText;
  final Icon? icon;
  final TextEditingController? controller;
  final Function(String)? validator ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
          borderRadius: BorderRadius.circular(15),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color.fromARGB(255, 246, 0, 0).withOpacity(.5)),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusColor: Colors.black.withOpacity(.5),
        fillColor: Theme.of(context).colorScheme.surface,
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Colors.black.withOpacity(.3)),
        suffixIcon: icon,
      ),
      controller: controller,
    );
  }
}
