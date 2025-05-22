import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.68,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  const Spacer(),
                  const IconCard(
                    icon: "assets/icons/sun.svg",
                    image: "assets/icons/check-mark.svg",
                  ),
                  const IconCard(
                    icon: "assets/icons/icon_2.svg",
                    text: "18°C",
                  ),
                  const IconCard(
                    icon: "assets/icons/icon_3.svg",
                    text: "5",
                  ),
                  const IconCard(
                    icon: "assets/icons/icon_4.svg",
                    image: "assets/icons/cancel_mark.svg",
                  ),
                ],
              ),
            )),
            Container(
              height: size.height * 0.68,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(63),
                      bottomRight: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withAlpha((0.29 * 255).round())
              )],
                  image: DecorationImage(
                      alignment: Alignment.centerRight,
                      fit: BoxFit.cover,
                      image: AssetImage(image))),
            )
          ],
        ),
      ),
    );
  }
}
