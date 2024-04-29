import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/no_refactor/no_refactor_screen.dart';
import 'package:sample_of_dividing_widget_into_manageable_parts/refactor/refactor_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NoRefactorScreen()),
                );
              },
              child: const Text('no_refactor'),
            ),
            const Gap(50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RefactorScreen()),
                );
              },
              child: const Text('refactor'),
            ),
          ],
        ),
      ),
    );
  }
}
