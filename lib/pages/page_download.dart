import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset( Assets.assetsPageDownload, fit: BoxFit.cover,)
    );
  }
}
