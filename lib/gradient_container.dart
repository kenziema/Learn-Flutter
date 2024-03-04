import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.beginColor, this.endColor, {super.key});

  const GradientContainer.purple({super.key})
      : beginColor = Colors.deepPurple,
        endColor = Colors.indigo;

  final Color beginColor;
  final Color endColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [beginColor, endColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/dice-2.png'),
      ),
    );
  }
}
