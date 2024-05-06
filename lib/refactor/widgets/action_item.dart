import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  const ActionItem({
    required this.iconData,
    required this.iconColor,
    required this.iconWidthRatio,
    required this.backgroundColor,
    required this.title,
    super.key,
  });
  final IconData iconData;
  final Color iconColor;
  final double iconWidthRatio;
  final Color backgroundColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: ColoredBox(
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(
                iconData,
                color: iconColor,
                size: MediaQuery.sizeOf(context).width * iconWidthRatio,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
