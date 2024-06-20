import 'package:coffe_shop/theme/app_theme.dart';
import 'package:coffe_shop/widgets/custom_filed_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalCardWidget extends StatelessWidget {
  const HorizontalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Container(
        padding: const EdgeInsets.only(left: 9, top: 9, right: 15, bottom: 9),
        height: 98,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            gradient: LinearGradient(
                colors: [Color(0xFF282C34), Color(0xFF10131A)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Row(
          children: [
            SizedBox(
              width: 147,
              height: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network('https://i.imgur.com/wV5AoUV.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '5 Coffee Beans You Must Try',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Apptheme.cardTitleMedium,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Icons.coffee_rounded,
                        color: Apptheme.iconColor,
                      ),
                      const Spacer(),
                      CustomFiledButton(
                          onTap: () {},
                          height: 34,
                          width: 33,
                          color: Apptheme.buttonBackground1Color,
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.paperplane_fill,
                              color: Colors.white,
                              size: 18,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
