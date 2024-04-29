import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ImageSliderView extends StatelessWidget {
  const ImageSliderView({super.key});

  @override
  Widget build(BuildContext context) {
    return _ImageSliderViewLayout(
      backgroundImageAsset: Image.asset('assets/animal2.jpg'),
      foregroundButton: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
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
      progressBar: const _CustomProgressBar(),
    );
  }
}

class _ImageSliderViewLayout extends StatelessWidget {
  const _ImageSliderViewLayout({
    required this.backgroundImageAsset,
    required this.foregroundButton,
    required this.progressBar,
  });
  final Widget backgroundImageAsset;
  final Widget foregroundButton;
  final Widget progressBar;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            backgroundImageAsset,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: foregroundButton,
            )
          ],
        ),
        const Gap(10),
        const _CustomProgressBar(),
      ],
    );
  }
}

class _CustomProgressBar extends StatelessWidget {
  const _CustomProgressBar();

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
