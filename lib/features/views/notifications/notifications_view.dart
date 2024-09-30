import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(right: 12),
                  child: Text(
                    "Get updates on your order status",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade900,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Allow push notifications to get real-time updates on your order status.",
                  style: GoogleFonts.poppins(
                      color: Colors.grey.shade600, fontSize: 14),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image(
                    image: NetworkImage(
                      'https://imgs.search.brave.com/taHKpoaLZhsjfJTuHAI1ZdRRZ_7KG-i9RF3vpFUP3Ak/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzM5LzMyLzk5/LzM2MF9GXzczOTMy/OTkyMV8wNVN3dTI2/U3hpbFlDUU9QcWxX/UThXY1BpdzRnY205/Uy5qcGc',
                    ),
                    width: double.infinity,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.all(8).copyWith(top: 10, bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red.shade400,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Turn on Notification",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Not Now",
                    style: GoogleFonts.poppins(
                        color: Colors.red.shade400,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
