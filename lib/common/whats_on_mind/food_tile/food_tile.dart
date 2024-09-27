import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatefulWidget {
  final String imageUrl;
  final String foodName;
  const FoodTile({super.key, required this.imageUrl, required this.foodName});

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0).copyWith(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(widget.imageUrl),
          ),
          const SizedBox(
            height: 0,
          ),
          Text(
            widget.foodName,
            style:
                GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
