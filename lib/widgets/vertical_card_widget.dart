import 'dart:ui';

import 'package:coffe_shop/entities/coffee.dart';
import 'package:coffe_shop/screens/screens.dart';
import 'package:coffe_shop/theme/app_theme.dart';
import 'package:coffe_shop/widgets/custom_filed_button.dart';
import 'package:flutter/material.dart';

class VerticalCardWidget extends StatelessWidget {
  final Coffee coffee;
  const VerticalCardWidget({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22),
      child: Container(
        padding: const EdgeInsets.all(9),
        width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            gradient: const LinearGradient(
                colors: [Color(0xff282c34), Color(0xff10131A)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                SizedBox(
                  height: 144,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.network(coffee.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 25,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.08)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.star,
                              color: Apptheme.reviewIconColor, size: 15),
                          Text(
                            coffee.rating.toString(),
                            style: Apptheme.reviewRatting,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailScreen(coffee: coffee)));
                },
                child: Text(coffee.name, style: Apptheme.cardTitleSmall)),
            const SizedBox(height: 3),
            Text('With Oat Milk', style: Apptheme.cardSubtitleSmall),
            const Spacer(),
            Row(
              children: [
                Row(
                  children: [
                    Text('\$', style: Apptheme.priceCurrencySmall),
                    const SizedBox(width: 3),
                    Text(coffee.price.toString(),
                        style: Apptheme.priceValueSmall)
                  ],
                ),
                const Spacer(),
                CustomFiledButton(
                    onTap: () {},
                    height: 31,
                    width: 34,
                    color: Apptheme.buttonBackground1Color,
                    child: const Icon(Icons.add, size: 18, color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
