import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NoOrdersScreen extends StatefulWidget {
  const NoOrdersScreen({super.key});

  @override
  State<NoOrdersScreen> createState() => _NoOrdersScreenState();
}

class _NoOrdersScreenState extends State<NoOrdersScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStuffDone();
  }

  var removedBackgroundBytes;

  getStuffDone() async {
    var response = await http.get(Uri.parse(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2OubbGwD9EEzw3viJrSOoNXTNEKHIxUT9WQ&s'));
    var imageBytes = response.bodyBytes;
    removedBackgroundBytes = await removeBackground(imageBytes: imageBytes);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: HexColor("#f3f3f3"),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'REORDER',
          style: GoogleFonts.luckiestGuy(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              Center(
                child: Image(
                  image: NetworkImage(""),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Uh Oh! You don't have any food orders",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text("Order now to avail great discounts!"),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.23,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
