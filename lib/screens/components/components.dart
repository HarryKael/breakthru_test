import 'package:flutter/material.dart';

class PImage extends StatelessWidget {
  const PImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage('assets/p.png'),
        width: 300,
        fit: BoxFit.contain,
      ),
    );
  }
}
