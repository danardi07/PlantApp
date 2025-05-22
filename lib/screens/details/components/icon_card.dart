import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constants.dart';

class IconCard extends StatelessWidget {
  final String icon;
  final String? text;
  final String? image;

  const IconCard({
    super.key,
    required this.icon,
    this.text,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlipCard(
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 15),
                  blurRadius: 22,
                  color: kPrimaryColor.withAlpha((0.5 * 255).round())),
              const BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.white,
              )
            ]),
        child: SvgPicture.asset(icon),
      ),
      back: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 15),
                  blurRadius: 22,
                  color: kPrimaryColor.withAlpha((0.5 * 255).round())),
              const BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.white,
              )
            ]),
        child: text != ""
            ? Text(
                text!,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            : SvgPicture.asset(image!),
      ),
    );
  }
}
