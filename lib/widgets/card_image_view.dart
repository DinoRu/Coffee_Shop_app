import 'package:coffe_shop/entities/coffee.dart';
import 'package:coffe_shop/screens/screens.dart';
import 'package:coffe_shop/theme/app_theme.dart';
import 'package:coffe_shop/widgets/blur_card_view.dart';
import 'package:coffe_shop/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardImageView extends StatelessWidget {
  final Coffee coffee;
  const CardImageView({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              coffee.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 20,
            left: 20,
            child: CustomIconButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                width: 40,
                height: 40,
                borderRadius: 10,
                child: const Icon(
                  CupertinoIcons.back,
                  color: Apptheme.iconColor,
                ))),
        Positioned(
            top: 20,
            right: 20,
            child: CustomIconButton(
              onTap: () {},
              width: 40,
              height: 40,
              borderRadius: 10,
              child: const Icon(Icons.favorite, color: Apptheme.iconColor),
            )),

        // Blur Card View
        BlurCardView(coffee: coffee),
      ],
    );
  }
}
