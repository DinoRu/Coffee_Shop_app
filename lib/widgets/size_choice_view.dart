import 'package:coffe_shop/theme/app_theme.dart';
import 'package:coffe_shop/widgets/custom_filed_button.dart';
import 'package:flutter/material.dart';

class SizeChoiseView extends StatelessWidget {
  const SizeChoiseView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFiledButton(
          onTap: () {},
          width: 91,
          height: 36,
          borderRadius: 5,
          color: Apptheme.buttonBackground2Color,
          borderColor: Apptheme.buttonBorderColor,
          child: Text(
            'S',
            style: Apptheme.buttonActiveTextStyle,
          ),
        ),
        CustomFiledButton(
          onTap: () {},
          width: 91,
          height: 36,
          color: Apptheme.buttonBackground2Color,
          child: Text(
            'M',
            style: Apptheme.buttonInactiveTextStyle,
          ),
        ),
        CustomFiledButton(
          onTap: () {},
          width: 91,
          height: 36,
          color: Apptheme.buttonBackground2Color,
          child: Text(
            'L',
            style: Apptheme.buttonInactiveTextStyle,
          ),
        ),
      ],
    );
  }
}
