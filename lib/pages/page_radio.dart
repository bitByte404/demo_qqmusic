import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset( Assets.assetsPageRadio, fit: BoxFit.cover,)
    );
  }
}
