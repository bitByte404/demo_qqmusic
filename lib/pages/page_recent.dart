import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset( Assets.assetsPageRecent, fit: BoxFit.cover,)
    );
  }
}
