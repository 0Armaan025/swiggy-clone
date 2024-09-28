import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_clone/common/quick_points_for_you/quick_pick_tile.dart';
import 'package:swiggy_clone/common/whats_on_mind/food_tile/food_tile.dart';

class QuickPointsForYou extends StatefulWidget {
  const QuickPointsForYou({super.key});

  @override
  State<QuickPointsForYou> createState() => QuickPointsForYouState();
}

class QuickPointsForYouState extends State<QuickPointsForYou> {
  bool _fastDelivery = false;

  @override
  void initState() {
    super.initState();
    _fastDelivery = true;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0)
                .copyWith(left: 10, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "QUICK POINTS FOR YOU",
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: size.width * 0.45,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _fastDelivery = true;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 8, top: 8),
                  width: size.width * 0.31,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                    color: _fastDelivery == true ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: _fastDelivery == false
                        ? Border.all(color: Colors.grey.shade400)
                        : null,
                  ),
                  child: Text(
                    "Fast Delivery",
                    style: GoogleFonts.poppins(
                      color:
                          _fastDelivery == true ? Colors.white : Colors.black,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _fastDelivery = false;
                    print(_fastDelivery);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 8, top: 8),
                  width: size.width * 0.37,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                    color: _fastDelivery == false ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: _fastDelivery == true
                        ? Border.all(color: Colors.grey.shade400)
                        : null,
                  ),
                  child: Text(
                    "Popular Brands",
                    style: GoogleFonts.poppins(
                      color:
                          _fastDelivery == true ? Colors.black : Colors.white,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 4.0).copyWith(top: 20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 0.0,
                childAspectRatio: 1 / 1.4,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return QuickPickTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
