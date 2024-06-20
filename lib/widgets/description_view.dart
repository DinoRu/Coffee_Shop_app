import 'package:coffe_shop/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  final String description;
  const DescriptionView({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: description.substring(0, 120),
            style: Apptheme.descriptionContent,
          ),
          TextSpan(
            text: ' ...',
            style: Apptheme.descriptionReadMore,
          ),
          TextSpan(
            text: ' Read More',
            style: Apptheme.descriptionReadMore,
          ),
        ],
      ),
    );
  }
}
