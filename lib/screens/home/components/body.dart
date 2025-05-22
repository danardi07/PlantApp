import 'package:flutter/material.dart';
import 'package:plantapp/screens/home/components/featured_plants.dart';
import 'package:plantapp/screens/home/components/recomend_plant_card.dart';
import 'package:plantapp/screens/home/components/title_with_more_btn.dart';
import 'package:plantapp/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //provides total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Produk Rekomendasi",
            press: () {},
          ),
          const RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Produk Unggulan",
            press: () {},
          ),
          const FeatiredPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
