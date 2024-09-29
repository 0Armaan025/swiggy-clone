import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestrauntTile extends StatefulWidget {
  final String imageUrl;
  final bool isFreeDelivery;
  final String desc;
  final String title;

  const RestrauntTile(
      {super.key,
      required this.imageUrl,
      required this.isFreeDelivery,
      required this.desc,
      required this.title});

  @override
  State<RestrauntTile> createState() => _RestrauntTileState();
}

class _RestrauntTileState extends State<RestrauntTile> {
  bool _buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.22,
                  width: size.width * 0.42,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -6,
                  right: -8,
                  child: IconButton(
                    icon: _buttonPressed
                        ? Icon(Icons.favorite, color: Colors.red, size: 30)
                        : Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 30,
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
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Icon(Icons.stars_rounded, color: Colors.red),
                      Text(
                        "\t${widget.desc}",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  if (widget.isFreeDelivery)
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.deepPurple,
                            child: Icon(
                              Icons.delivery_dining_rounded,
                              color: Colors.white,
                              size: 16,
                            )),
                        Text(
                          "\tFree Delivery",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                      ],
                    ),
                  const SizedBox(height: 4),
                  Text(
                    "Pizzas, Italian, Pastas",
                    style: GoogleFonts.poppins(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 0),
                  Text(
                    "Jagraon • 1.3 km",
                    style: GoogleFonts.poppins(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (widget.isFreeDelivery)
                    Container(
                      height: size.height * 0.04,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple, Colors.lightBlue],
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.delivery_dining_rounded,
                              color: Colors.white),
                          const SizedBox(width: 4),
                          Text(
                            "FREE DELIVERY",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
