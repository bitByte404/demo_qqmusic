import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset( Assets.assetsPageMusic, fit: BoxFit.cover,)
    );
  }
}
