import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickPickTile extends StatefulWidget {
  const QuickPickTile({super.key});

  @override
  State<QuickPickTile> createState() => _QuickPickTileState();
}

class _QuickPickTileState extends State<QuickPickTile> {
  bool _buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size.width * 0.27,
          height: size.height * 0.13,
          margin: const EdgeInsets.only(
            left: 8,
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/banners/food_item_banner.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: size.height * 0.00001,
                left: size.width * 0.15,
                child: IconButton(
                  icon: _buttonPressed
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                        ),
                  onPressed: () {
                    setState(() {
                      _buttonPressed = !_buttonPressed;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "La Pino'z Pizza",
            style: GoogleFonts.poppins(
                color: Colors.grey.shade900,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.stars_rounded,
              color: Colors.red.shade400,
              size: 15,
            ),
            Container(
              width: 100,
              child: Text(
                " 4.4\t25-30 mins",
                style: GoogleFonts.poppins(
                  color: Colors.grey.shade900,
                  fontSize: 9,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Text(
            "Pizzas",
            style:
                GoogleFonts.poppins(color: Colors.grey.shade500, fontSize: 9),
          ),
        ),
      ],
    );
  }
}
