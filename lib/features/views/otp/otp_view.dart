import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiggy_clone/common/otp_text_view/otp_text_view.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _otpController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: size.width * 0.3,
            height: size.height * 0.05,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: HexColor("#01050b"),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Skip",
              style: GoogleFonts.poppins(color: Colors.grey[200]),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Enter your mobile number to get OTP",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
              OTPTextView(controller: _otpController),
              const SizedBox(
                height: 2,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                height: size.height * 0.06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: HexColor("#1b943b"),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Get OTP",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0)
                    .copyWith(top: 12),
                child: Text(
                    "By clicking, I accept the terms of service and privacy policy",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
