import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset( Assets.assetsPageVideo, fit: BoxFit.cover,)
    );
  }
}