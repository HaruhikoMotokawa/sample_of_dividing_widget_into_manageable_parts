import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NoRefactorScreen extends StatelessWidget {
  const NoRefactorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'イカリング３',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'おわる',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ColoredBox(
          color: const Color(0xFF292E35),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset('assets/animal2.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {},
                      child: const Text(
                        '支援者求む！→',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 4,
                    width: 60,
                    child: ColoredBox(color: Color(0xFFEAFF3E)),
                  ),
                  Gap(10),
                  SizedBox(
                    height: 4,
                    width: 60,
                    child: ColoredBox(color: Color(0xFF606B77)),
                  ),
                  Gap(10),
                  SizedBox(
                    height: 4,
                    width: 60,
                    child: ColoredBox(color: Color(0xFF606B77)),
                  ),
                  Gap(10),
                  SizedBox(
                    height: 4,
                    width: 60,
                    child: ColoredBox(color: Color(0xFF606B77)),
                  ),
                ],
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
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
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          child: ColoredBox(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.location_city,
                                color: Colors.white,
                                size: MediaQuery.sizeOf(context).width * 0.23,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'ゲソタウン',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          child: ColoredBox(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.checkroom,
                                color: Colors.white,
                                size: MediaQuery.sizeOf(context).width * 0.23,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'マイコーデ',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          child: ColoredBox(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.history_edu,
                                color: Colors.white,
                                size: MediaQuery.sizeOf(context).width * 0.23,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'ヒストリー',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
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
