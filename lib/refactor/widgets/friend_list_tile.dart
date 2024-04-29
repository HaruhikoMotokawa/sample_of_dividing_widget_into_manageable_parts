import 'package:flutter/material.dart';

class FriendListTile extends StatelessWidget {
  const FriendListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: ColoredBox(
        color: Color(0xFF606B77),
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 10, 8, 8),
          child: Row(
            children: [
              Text(
                'オフライン',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                'フレンドリスト',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
