import 'package:flutter/material.dart';

class OTPTextView extends StatefulWidget {
  final TextEditingController controller;
  const OTPTextView({super.key, required this.controller});

  @override
  State<OTPTextView> createState() => _OTPTextViewState();
}

class _OTPTextViewState extends State<OTPTextView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          label: const Text("Mobile Number"),
          hintText: "10 digit mobile number",
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
