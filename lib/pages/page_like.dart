import 'package:demo_qqmusic/generated/assets.dart';
import 'package:demo_qqmusic/pages/page_like_musics.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> with TickerProviderStateMixin {
  final _tabs = ['歌曲', '歌单', '专辑', '有声节目', '视频'];
  late final TabController _tabController;
  final List<Widget> _tabViews = [
    LikeMusicPage(),
    LikeMusicPage(),
    LikeMusicPage(),
    LikeMusicPage(),
    LikeMusicPage(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '喜欢',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          bottom: TabBar(
            labelColor: const Color(0xFF00CC65),
            unselectedLabelColor: Colors.black,
            indicatorColor: const Color(0xFF00CC65),
            padding: const EdgeInsets.only(left: 8),
            dividerHeight: 0,
            tabs: List.generate(
                _tabs.length,
                (index) => Text(
                      _tabs[index],
                      style: const TextStyle(fontSize: 18),
                    )),
            controller: _tabController,
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: List.generate(
              _tabs.length,
              (index) => _tabViews[index],
            )));
  }
}
