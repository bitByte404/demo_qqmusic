import 'package:demo_qqmusic/generated/assets.dart';
import 'package:demo_qqmusic/pages/page_download.dart';
import 'package:demo_qqmusic/pages/page_like.dart';
import 'package:demo_qqmusic/pages/page_music.dart';
import 'package:demo_qqmusic/pages/page_radio.dart';
import 'package:demo_qqmusic/pages/page_recent.dart';
import 'package:demo_qqmusic/pages/page_recommend.dart';
import 'package:demo_qqmusic/pages/page_video.dart';
import 'package:demo_qqmusic/pages/page_yueguan.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_svg/flutter_svg.dart';

int selectedIndex = 0;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFFFAFAFA)),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF28F68C)),
        primaryColor: Colors.greenAccent,
        fontFamily: /*Platform.isWindows ? '微软雅黑' : null*/ 'SourceHanSerifCN',
        scaffoldBackgroundColor: const Color((0xFFFAFAFA)),
        textSelectionTheme:
            const TextSelectionThemeData(selectionColor: Colors.greenAccent),
      ),
      home: const SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> pagesList = const [
    RecommendPage(),
    YueGuanPage(),
    VideoPage(),
    RadioPage(),
    LikePage(),
    RecentPage(),
    DownloadPage(),
    MusicPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('appbar'),),
      body: Row(
        children: [
          mySideBar(),
          myMainPage(),
        ],
      ),
    );
  }

  Widget mySideBar() {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color(0xFFF6F6F6),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, top: 5, bottom: 5),
              child: Row(
                children: [
                  Image.asset(
                    Assets.assetsQqmusic,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    '阿伟音乐',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            sideIconWidget(iconDatas),
            // IconList(),
          ],
        ),
      ),
    );
  }

  Widget myMainPage() {
    return Expanded(
      flex: 5,
      child: Column(
        children: [myAppBar(), Expanded(child: pagesList[selectedIndex])],
      ),
    );
  }

  Widget myAppBar() {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.arrow_back_ios_new,
                size: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.refresh,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: 300,
                  height: 30,
                  child: const TextField(
                    cursorColor: Color(0xFF00F168),
                    decoration: InputDecoration(
                        hintText: '搜索音乐',
                        // hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Color(0xFFA5A5A5),
                        ),
                        // contentPadding:
                        // EdgeInsets.symmetric(vertical: 12),
                        hintStyle: TextStyle(color: Color(0xFFA5A5A5))),
                  )),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                Assets.assetsShiqu,
                height: 28,
                colorFilter:
                    const ColorFilter.mode(Color(0xFF00CC65), BlendMode.srcIn),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    Assets.assetsAvatar,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  '阿伟',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget sideIconWidget(List<Map> iconDatas) {
    return Column(
        children: List.generate(iconDatas.length, (index) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              iconDatas[index]['title'],
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        ...List.generate(iconDatas[index]['iconList'].length, (int innerIndex) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index * 4 + innerIndex;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: selectedIndex == index * 4 + innerIndex
                      ? const Color(0xFFE3E3E3)
                      : const Color(0xFFF6F6F6),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              margin: const EdgeInsets.only(left: 6, right: 6),
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    iconDatas[index]['iconList'][innerIndex]['icons'],
                    width: 24,
                    colorFilter: selectedIndex == index * 4 + innerIndex
                        ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                        : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    iconDatas[index]['iconList'][innerIndex]['title'],
                    style: TextStyle(
                        color: selectedIndex == index * 4 + innerIndex
                            ? Colors.black
                            : Colors.grey,
                        fontSize: 16,
                        fontWeight: selectedIndex == index * 4 + innerIndex
                            ? FontWeight.w700
                            : FontWeight.normal),
                  ),
                ],
              ),
            ),
          );
        }),
      ]);
    }));
  }
}

var iconDatas = [
  {
    "title": "在线音乐",
    "iconList": [
      {"icons": Assets.assetsRecommend, "title": "推荐"},
      {"icons": Assets.assetsLeguan, "title": "乐馆"},
      {"icons": Assets.assetsVideo, "title": "视频"},
      {"icons": Assets.assetsRadio, "title": "雷达"}
    ]
  },
  {
    "title": "我的音乐",
    "iconList": [
      {"icons": Assets.assetsLike, "title": "喜欢"},
      {"icons": Assets.assetsRecent, "title": "最近播放"},
      {"icons": Assets.assetsDownload, "title": "本地和下载"},
      {"icons": Assets.assetsMusicList, "title": "试听列表"}
    ]
  }
];
