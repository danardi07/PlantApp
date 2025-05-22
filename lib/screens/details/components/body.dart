import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/services/plant.dart' as pclass;
import 'image_and_icons.dart';
import 'title_and_pricing.dart';

class Body extends StatelessWidget {
  final pclass.Plant plant;

  const Body({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(image: plant.image),
          TitleAndPricing(
            title: plant.title,
            country: plant.country,
            price: plant.price,
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Beli",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Deskripsi",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
