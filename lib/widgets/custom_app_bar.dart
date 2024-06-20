import 'package:coffe_shop/theme/app_theme.dart';
import 'package:coffe_shop/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
            width: 45,
            height: 45,
            onTap: () {},
            child: const Icon(
              Icons.widgets,
              color: Apptheme.iconColor,
            )),
        const Spacer(),
        CustomIconButton(
            width: 45,
            height: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('assets/profil.jpg', fit: BoxFit.cover),
            ))
      ],
    );
  }
}
