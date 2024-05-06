import 'package:flutter/material.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/action_item.dart';

class MainActions extends StatelessWidget {
  const MainActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const iconColor = Colors.white;
    const iconWidthRatio = 0.23;
    const backgroundColor = Colors.black;
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionItem(
          iconData: Icons.location_city,
          iconColor: iconColor,
          iconWidthRatio: iconWidthRatio,
          backgroundColor: backgroundColor,
          title: 'ゲソタウン',
        ),
        ActionItem(
          iconData: Icons.checkroom,
          iconColor: iconColor,
          iconWidthRatio: iconWidthRatio,
          backgroundColor: backgroundColor,
          title: 'マイコーデ',
        ),
        ActionItem(
          iconData: Icons.history_edu,
          iconColor: iconColor,
          iconWidthRatio: iconWidthRatio,
          backgroundColor: backgroundColor,
          title: 'ヒストリー',
        ),
      ],
    );
  }
}
