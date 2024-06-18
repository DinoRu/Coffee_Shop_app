import 'package:flutter/material.dart';

class CustomFiledButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget child;
  final double borderRadius;
  final Color? borderColor;
  final double bordeWidth;
  final void Function()? onTap;
  const CustomFiledButton(
      {super.key,
      required this.height,
      required this.width,
      required this.color,
      required this.child,
      this.bordeWidth = 2,
      this.borderRadius = 13,
      this.onTap,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Material(
        color: color,
        child: InkWell(
          onHover: (value) {},
          onTap: onTap,
          child: Container(
            decoration: (borderColor != null)
                ? BoxDecoration(
                    border: Border.all(color: Colors.orange, width: bordeWidth))
                : null,
            width: width,
            height: height,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
