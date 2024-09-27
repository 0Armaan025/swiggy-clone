import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_clone/common/whats_on_mind/food_tile/food_tile.dart';

class WhatsOnYourMindComponent extends StatefulWidget {
  const WhatsOnYourMindComponent({super.key});

  @override
  State<WhatsOnYourMindComponent> createState() =>
      WhatsOnYourMindComponentState();
}

class WhatsOnYourMindComponentState extends State<WhatsOnYourMindComponent> {
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
                  "WHAT'S ON YOUR MIND",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FoodTile(
                        foodName: 'Burgers',
                        imageUrl: 'assets/images/foods/burger.jpeg',
                      ),
                      FoodTile(
                        foodName: 'Chinese',
                        imageUrl: 'assets/images/foods/chinese.jpg',
                      ),
                      FoodTile(
                        foodName: 'Coffees',
                        imageUrl: 'assets/images/foods/coffee.png',
                      ),
                      FoodTile(
                        foodName: 'Desserts',
                        imageUrl: 'assets/images/foods/desserts.jpg',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FoodTile(
                        foodName: 'Noodles',
                        imageUrl: 'assets/images/foods/noodles.png',
                      ),
                      FoodTile(
                        foodName: 'North Indian',
                        imageUrl: 'assets/images/foods/north india.jpeg',
                      ),
                      FoodTile(
                        foodName: 'Pastries',
                        imageUrl: 'assets/images/foods/pastry.jpeg',
                      ),
                      FoodTile(
                        foodName: 'Pizzas',
                        imageUrl: 'assets/images/foods/pizza.jpeg',
                      ),
                    ],
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
