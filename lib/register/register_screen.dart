import 'package:crispy_booking/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, this.nameController, this.phoneController});
  final TextEditingController? phoneController;
  final TextEditingController? nameController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create an account",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w500)),
              const SizedBox(height: 25),
              Text("Phone number",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 8),
              MyTextField(
                validator: qValidator([IsEgyptianPhone()]),
                hintText: "Phone number",
                controller: phoneController,
              ),
              const SizedBox(height: 24),
              Text("Name", style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 8),
              MyTextField(
                validator: qValidator([
                  MinLength(3),
                  MaxLength(20),
                  IsRequired("Name is required"),
                ]),
                hintText: "Hashem",
                controller: nameController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
