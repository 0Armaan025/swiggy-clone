import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiggy_clone/features/feedback/feedback_view.dart';
import 'package:swiggy_clone/utils/utils.dart';

class TellUsComponent extends StatefulWidget {
  const TellUsComponent({super.key});

  @override
  State<TellUsComponent> createState() => _TellUsComponentState();
}

class _TellUsComponentState extends State<TellUsComponent> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: HexColor("#f1f0f5"),
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width * 0.53,
                  child: Text(
                    "Tell us what you are looking for!",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  width: size.width * 0.4,
                  child: Text(
                    "Your feedback will help us improve recommendations for you",
                    style: GoogleFonts.poppins(
                        color: Colors.grey[600], fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                InkWell(
                  onTap: () {
                    moveToScreen(context, FeedbackScreen(), false);
                  },
                  child: Container(
                    width: size.width * 0.25,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Tell us",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  "Takes 30 seconds or less",
                  style: GoogleFonts.poppins(
                      color: Colors.grey[800], fontSize: 10),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Center(
                  child: Image(
                    image:
                        AssetImage('assets/images/cliparts/choose_clipart.png'),
                    width: size.width * 0.3,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
