import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class LikeMusicPage extends StatelessWidget {
  LikeMusicPage({super.key});

  final likeIcons = [
    {'icon': Icons.play_arrow, 'label': '播放'},
    {'icon': Icons.download_outlined, 'label': '下载'},
    {'icon': Icons.read_more_outlined, 'label': '批量'},
  ];

  final songs = [
    {
      "title": "君加<九t±melody(你给我的melody)",
      "artist": "VP磷品母带+",
      "duration": "04:33",
      "album": "Album 1"
    },
    {
      "title": "－(Lozareena)",
      "artist": "·百億光年",
      "duration": "03:41",
      "album": "Album 2"
    },
    {
      "title": "三時の≠(三点钟的吻)",
      "artist": "臻品母带三時の",
      "duration": "04:40",
      "album": "Album 3"
    },
    {
      "title": "声(只想说一声)",
      "artist": "VP赣品母带声",
      "duration": "02:41",
      "album": "Album 4"
    },
    {
      "title": "比力(室女座)",
      "artist": "VP赣品母带",
      "duration": "02:45",
      "album": "Album 5"
    },
    {
      "title": "末(空等)",
      "artist": "臻品母带",
      "duration": "04:14",
      "album": "Album 6"
    },
    {
      "title": "知(依然无所知)",
      "artist": "臻品母带知",
      "duration": "02:14",
      "album": "Album 7"
    },
    {
      "title": "(音辞(所以我放弃了音乐)",
      "artist": "品母带(音辞(所以我放弃了音乐)",
      "duration": "04:02",
      "album": "Album 8"
    },
    {
      "title": "(不莱梅)",
      "artist": "臻品姆带",
      "duration": "04:34",
      "album": "Album 9"
    },
    {
      "title": "力(Yorushika)",
      "artist": "夜行《想哭的我戴上了猫的面具》动画电影插曲臻晶母带",
      "duration": "03:23",
      "album": "Album 10"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(likeIcons.length, (index) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color(0xFFE6E6E6),
                ),
                height: 30,
                width: 80,
                margin: const EdgeInsets.only(bottom: 15, top: 5, right: 20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        likeIcons[index]['icon'] as IconData?,
                        size: 22,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(likeIcons[index]['label'] as String),
                    ],
                  ),
                ),
              );
            }),
          ),
          const Text(
            '歌名/歌手',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Flexible(
              child: ListView(
            children: List.generate(songs.length, (index) {
              return Container(
                decoration: BoxDecoration(
                    color: index % 2 == 0
                        ? const Color(0xFFF5F5F5)
                        : const Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(8)),
                // margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        flex: 3,
                        child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              Assets.assetsAvatar,
                              height: 45,
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                songs[index]['title']!,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                songs[index]['artist']!,
                                style: const TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                    Flexible(flex: 2, child: Text(songs[index]['album']!, style: const TextStyle(fontSize: 12))),
                    Flexible(flex: 1, child: Text(songs[index]['duration']!,style: const TextStyle(fontSize: 12))),
                  ],
                ),
              );
            }),
          ))
        ],
      ),
    );
  }
}
