import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class YueGuanPage extends StatelessWidget {
  const YueGuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset( Assets.assetsPageLeguan, fit: BoxFit.cover,)
    );
  }
}
