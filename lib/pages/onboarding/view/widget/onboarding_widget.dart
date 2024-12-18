import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget(
      {super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(imagePath),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
