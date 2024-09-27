import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.screenHeight,
    this.icon,
    this.isHide,
  });
  final String hintText;
  final Icon? icon;
  final TextEditingController? controller;
  final Function(String)? validator;
  bool? isHide;
  final double screenHeight;
  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: widget.screenHeight * .01, horizontal: 10.0),
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
        hintText: widget.hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Colors.black.withOpacity(.3)),
        suffixIcon: widget.isHide != null
            ? IconButton(
                onPressed: () {
                  widget.isHide = !widget.isHide!;
                  setState(() {});
                },
                icon: Icon(widget.isHide!
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined))
            : null,
      ),
      controller: widget.controller,
      obscureText: widget.isHide ?? false,
    );
  }
}
