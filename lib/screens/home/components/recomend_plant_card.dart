import 'package:flutter/material.dart';
import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data statis untuk menggantikan data dari database
    final plants = [
      {
        'image': 'assets/images/image_1.png',
        'title': 'Tanaman Hias',
        'country': 'Iran',
        'price': 120000,
      },
      {
        'image': 'assets/images/image_2.png',
        'title': 'Mawar',
        'country': 'Belanda',
        'price': 98000,
      },
    ];

    return SizedBox(
      height: 318,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: plants.length,
        itemBuilder: (context, index) {
          final plant = plants[index];
          return RecomendPlantCard(
            image: plant['image'] as String,
            title: plant['title'] as String,
            country: plant['country'] as String,
            price: plant['price'] as int,
            press: () {},
          );
        },
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withAlpha((0.23 * 255).round()),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins-Regular',
                            ),
                          ),
                          TextSpan(
                            text: country,
                            style: TextStyle(
                              color: kPrimaryColor.withAlpha((0.5 * 255).round()),
                              fontFamily: 'Poppins-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Rp.$price",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
