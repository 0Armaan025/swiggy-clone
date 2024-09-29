import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_clone/common/restraunts_to_explore/restraunt_tile.dart';

class RestrauntsToExplore extends StatefulWidget {
  const RestrauntsToExplore({super.key});

  @override
  State<RestrauntsToExplore> createState() => _RestrauntsToExploreState();
}

class _RestrauntsToExploreState extends State<RestrauntsToExplore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 15),
            child: Text(
              "Restraunts to Explore",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RestrauntTile(
            imageUrl: 'assets/images/banners/food_item_banner.png',
            desc: "4.5 (198) • 20-25 mins",
            title: "Domino's Pizza",
            isFreeDelivery: false,
          ),
          RestrauntTile(
            imageUrl: 'assets/images/banners/food_item_banner.png',
            desc: "4.5 (198) • 20-25 mins",
            title: "Domino's Pizza",
            isFreeDelivery: true,
          ),
        ],
      ),
    );
  }
}
