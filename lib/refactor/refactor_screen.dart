import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/friend_list_tile.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/image_slider_view.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/main_actions.dart';

class RefactorScreen extends StatelessWidget {
  const RefactorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _RefactorScreenLayout(
      appBarTitle: 'イカリング３',
      appBarActions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'おわる',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      imageSlider: const ImageSliderView(),
      friendListTile: const FriendListTile(),
      mainActions: const MainActions(),
    );
  }
}

class _RefactorScreenLayout extends StatelessWidget {
  const _RefactorScreenLayout({
    required this.appBarTitle,
    required this.appBarActions,
    required this.imageSlider,
    required this.friendListTile,
    required this.mainActions,
  });

  final String appBarTitle;
  final List<Widget> appBarActions;
  final Widget imageSlider;
  final Widget friendListTile;
  final Widget mainActions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: appBarActions,
      ),
      body: SingleChildScrollView(
        child: ColoredBox(
          color: const Color(0xFF292E35),
          child: Column(
            children: [
              imageSlider,
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: friendListTile,
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: mainActions,
              ),
              const Gap(20),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: miniIconConfigs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          child: ColoredBox(
                            color: miniIconConfigs[index].backgroundColor,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(
                                miniIconConfigs[index].iconData,
                                color: miniIconConfigs[index].iconColor,
                                size: MediaQuery.sizeOf(context).width * 0.15,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          miniIconConfigs[index].text,
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class IconConfig {
  IconConfig({
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

List<IconConfig> miniIconConfigs = [
  IconConfig(
    iconData: Icons.close,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFF12CA91),
    text: 'Xランキング',
  ),
  IconConfig(
    iconData: Icons.festival,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFFF427B),
    text: 'イベントマッチ',
  ),
  IconConfig(
    iconData: Icons.pedal_bike,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFEA5358),
    text: 'ロブイチ',
  ),
  IconConfig(
    iconData: Icons.menu_book,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFF5B39EB),
    text: 'カタログ',
  ),
  IconConfig(
    iconData: Icons.photo_library,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFEA8C4D),
    text: 'アルバム',
  ),
  IconConfig(
    iconData: Icons.shield,
    iconColor: Colors.black,
    backgroundColor: const Color(0xFFF5FF22),
    text: 'タイカイサポート',
  ),
  IconConfig(
    iconData: Icons.flutter_dash,
    iconColor: const Color(0xFFE8805F),
    backgroundColor: const Color(0xFFFAEEE8),
    text: 'サイドオーダー',
  ),
  IconConfig(
    iconData: Icons.key,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'ブキ',
  ),
  IconConfig(
    iconData: Icons.electric_bolt,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'ステージ',
  ),
  IconConfig(
    iconData: Icons.stars,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'フェス',
  ),
  IconConfig(
    iconData: Icons.phishing,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'バイト',
  ),
  IconConfig(
    iconData: Icons.smart_toy,
    iconColor: Colors.white,
    backgroundColor: const Color(0xFF9A49DF),
    text: 'ヒーローモード',
  ),
  IconConfig(
    iconData: Icons.play_circle,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: 'メモリープレイヤー',
  ),
  IconConfig(
    iconData: Icons.screen_rotation_alt,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: 'ヘヤタテ',
  ),
  IconConfig(
    iconData: Icons.qr_code_2,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: 'QRコードリーダー',
  ),
  IconConfig(
    iconData: Icons.settings,
    iconColor: Colors.white,
    backgroundColor: Colors.grey,
    text: '設定',
  ),
];
