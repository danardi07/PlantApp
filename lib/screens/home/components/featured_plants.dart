import 'package:flutter/material.dart';
import '../../../constants.dart';

class FeatiredPlants extends StatelessWidget {
  const FeatiredPlants({
    super.key, // key opsional
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeauturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeauturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeauturePlantCard extends StatelessWidget {
  const FeauturePlantCard({
    super.key, // key opsional
    required this.image,
    required this.press,
  });

  final String image;
  final VoidCallback press; // Lebih baik gunakan VoidCallback untuk callback tanpa parameter

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
