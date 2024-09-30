import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CraftedByComponent extends StatefulWidget {
  const CraftedByComponent({super.key});

  @override
  State<CraftedByComponent> createState() => _CraftedByComponentState();
}

class _CraftedByComponentState extends State<CraftedByComponent> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Live it up! :)",
              style: GoogleFonts.quicksand(
                fontSize: 50,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Crafted with 💖 by Armaan in Jagraon(Punjab), India.",
              style: GoogleFonts.poppins(
                color: Colors.grey.shade500,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
