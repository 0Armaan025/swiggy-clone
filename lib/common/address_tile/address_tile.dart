import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressTile extends StatefulWidget {
  const AddressTile({super.key});

  @override
  State<AddressTile> createState() => _AddressTileState();
}

class _AddressTileState extends State<AddressTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      padding: const EdgeInsets.all(2),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.navigation,
                color: Colors.grey[700],
                size: 30,
              ),
              Text(
                "Some colony address or something",
                style: GoogleFonts.poppins(color: Colors.grey[800]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "City, State, Country",
              style: GoogleFonts.poppins(
                color: Colors.grey[500],
              ),
            ),
          )
        ],
      ),
    );
  }
}
