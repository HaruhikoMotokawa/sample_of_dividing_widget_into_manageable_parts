import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/friend_list_tile.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/image_slider_view.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/main_actions.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/widgets/sub_actions.dart';

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
      subActions: const SubActions(),
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
    required this.subActions,
  });

  final String appBarTitle;
  final List<Widget> appBarActions;
  final Widget imageSlider;
  final Widget friendListTile;
  final Widget mainActions;
  final Widget subActions;

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
              subActions,
            ],
          ),
        ),
      ),
    );
  }
}
