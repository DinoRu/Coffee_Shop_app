import 'package:coffe_shop/entities/coffee.dart';
import 'package:coffe_shop/theme/app_theme.dart';
import 'package:coffe_shop/widgets/card_image_view.dart';
import 'package:coffe_shop/widgets/custom_filed_button.dart';
import 'package:coffe_shop/widgets/description_view.dart';
import 'package:coffe_shop/widgets/size_choice_view.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Coffee coffee;
  const DetailScreen({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Apptheme.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section -> Card image
            Expanded(
              child: CardImageView(coffee: coffee),
            ),
            const SizedBox(height: 30),
            // Section -> Description
            Text(
              'Description',
              style: Apptheme.descriptionTitle,
            ),
            const SizedBox(height: 15),
            DescriptionView(description: coffee.description),
            const SizedBox(height: 30),
            // Section -> choice
            const SizeChoiseView(),
            const SizedBox(height: 30),
            // Section -> Price
            SizedBox(
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Price', style: Apptheme.priceTitleLarge),
                      const Spacer(),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '\$', style: Apptheme.priceCurrencyLarge),
                        TextSpan(
                            text: coffee.price.toString(),
                            style: Apptheme.priceValueLarge)
                      ]))
                    ],
                  ),
                  CustomFiledButton(
                      height: 56,
                      width: 138,
                      color: Apptheme.buttonBackground1Color,
                      child: Text('Buy Now', style: Apptheme.buttonTextStyle))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
