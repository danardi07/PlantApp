import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class TitleAndPricing extends StatelessWidget {
  final String title, country;
  final int price;

  const TitleAndPricing({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      )),
              Text(
                country,
                style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor.withAlpha((0.5 * 255).round())
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      ),
    );
  }
}
