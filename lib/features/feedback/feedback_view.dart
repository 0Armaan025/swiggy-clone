import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_clone/features/views/home/home_view.dart';
import 'package:swiggy_clone/utils/utils.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final List<String> checkboxTitles = [
    "Better discounts",
    "Lower prices",
    "Better rating",
    "Lower delivery time",
    "Can't decide what to order",
    "Others"
  ];

  List<bool> checkboxValues = List.generate(6, (index) => false);

  bool isSubmitEnabled() {
    return checkboxValues.contains(true);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff1f0f5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Share Feedback",
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade900,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          moveToScreen(context, HomeScreen(), true);
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.grey[900],
                          size: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[500],
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "I am looking for restaurants with...",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade700,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: List<Widget>.generate(
                      checkboxTitles.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: CheckboxListTile(
                          contentPadding: const EdgeInsets.all(0),
                          activeColor: Colors.red,
                          checkboxShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          checkColor: Colors.white,
                          title: Text(
                            checkboxTitles[index],
                            style: GoogleFonts.poppins(
                              color: Colors.grey.shade700,
                              fontSize: 13,
                            ),
                          ),
                          value: checkboxValues[index],
                          onChanged: (bool? value) {
                            setState(() {
                              checkboxValues[index] = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Tell us more?",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade700,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Optional...",
                      hintStyle: GoogleFonts.raleway(
                        color: Colors.grey.shade500,
                        fontSize: 17,
                      ),
                      contentPadding: const EdgeInsets.all(10),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: isSubmitEnabled() ? () {} : null,
                  child: Container(
                    height: size.height * 0.07,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isSubmitEnabled()
                          ? Colors.red.shade500
                          : Colors.red.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Submit",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
