import 'package:flutter/material.dart';

class SubActions extends StatelessWidget {
  const SubActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: _subActionItemConfigs.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: ColoredBox(
                  color: _subActionItemConfigs[index].backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(
                      _subActionItemConfigs[index].iconData,
                      color: _subActionItemConfigs[index].iconColor,
                      size: MediaQuery.sizeOf(context).width * 0.15,
                    ),
                  ),
                ),
              ),
              Text(
                _subActionItemConfigs[index].text,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          );
        });
  }
}

class _SubActionItemConfig {
  _SubActionItemConfig({
    required this.iconData,
    required this.iconColor,
    required this.backgroundColor,
    required this.text,
  });
  IconData iconData;
  Color iconColor;
  Color backgroundColor;
  String text;
}

List<_SubActionItemConfig> _subActionItemConfigs = [
  _SubActionItemConfig(
    iconData: Icons.close,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFF12CA91),
    text: 'Xランキング',
  ),
  _SubActionItemConfig(
    iconData: Icons.festival,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFFF427B),
    text: 'イベントマッチ',
  ),
  _SubActionItemConfig(
    iconData: Icons.pedal_bike,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFEA5358),
    text: 'ロブイチ',
  ),
  _SubActionItemConfig(
    iconData: Icons.menu_book,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFF5B39EB),
    text: 'カタログ',
  ),
  _SubActionItemConfig(
    iconData: Icons.photo_library,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFEA8C4D),
    text: 'アルバム',
  ),
  _SubActionItemConfig(
    iconData: Icons.shield,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFF5FF22),
    text: 'タイカイサポート',
  ),
  _SubActionItemConfig(
    iconData: Icons.flutter_dash,
    iconColor: const Color(0xFFE8805F),
    backgroundColor: const Color(0xFFFAEEE8),
    text: 'サイドオーダー',
  ),
  _SubActionItemConfig(
    iconData: Icons.key,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'ブキ',
  ),
  _SubActionItemConfig(
    iconData: Icons.electric_bolt,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'ステージ',
  ),
  _SubActionItemConfig(
    iconData: Icons.stars,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'フェス',
  ),
  _SubActionItemConfig(
    iconData: Icons.phishing,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'バイト',
  ),
  _SubActionItemConfig(
    iconData: Icons.smart_toy,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'ヒーローモード',
  ),
  _SubActionItemConfig(
    iconData: Icons.play_circle,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: 'メモリープレイヤー',
  ),
  _SubActionItemConfig(
    iconData: Icons.screen_rotation_alt,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: 'ヘヤタテ',
  ),
  _SubActionItemConfig(
    iconData: Icons.qr_code_2,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: 'QRコードリーダー',
  ),
  _SubActionItemConfig(
    iconData: Icons.settings,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: '設定',
  ),
];
