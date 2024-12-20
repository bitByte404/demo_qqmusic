import 'package:audioplayers/audioplayers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_qqmusic/generated/assets.dart';
import 'package:demo_qqmusic/mock/mock_data.dart';
import 'package:flutter/material.dart';

class LikeMusicPage extends StatelessWidget {
  LikeMusicPage({super.key});

  final likeIcons = [
    {'icon': Icons.play_arrow, 'label': '播放'},
    {'icon': Icons.download_outlined, 'label': '下载'},
    {'icon': Icons.read_more_outlined, 'label': '批量'},
  ];

  final  songs = MockDataUtil.getMockSongs();

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
            child: ListView.builder(
                // key: const PageStorageKey<String>('like_music_list'),
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      var player = AudioPlayer();
                      var song = 'https://m702.music.126.net/20241220171248/fef02d68009879f3e6b1fac9cf5b84c4/jd-musicrep-ts/b2ab/c4a0/91e2/6ce05d5111a2c10ba59c71e983fae4be.mp3?vuutv=xN7gjJqTKXqS5qK/xec2zBPqe+h6tOsDGG1a9Z4T0L/n6cMrfUP1R4ys9u0QHopdtb4eg3z6Sp/rdumlHRuI+PKDMgu1Xm2f1Qedr1G9fdNu6E4TIA8f8SJOJWV8Xf46JuyiK+JeC01S+CMxPe/WIQ==';
                      player.play(UrlSource(song));
                      // player.play(songs[index]['play_url']);

                    },
                    child: Container(
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
                                      child: CachedNetworkImage(
                                        // key: Key('song_image$index'),
                                        fadeInDuration: Duration.zero,
                                        fadeOutDuration: Duration.zero,
                                        imageUrl:
                                            songs[index]
                                                ['img'],
                                        height: 45,
                                      )),
                                  Container(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          songs[index]
                                              ['song_name']!,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          songs[index]
                                              ['artist']!,
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          // Flexible(flex: 2, child: Text(songs[index]['album']!, style: const TextStyle(fontSize: 12))),
                          // Flexible(flex: 1, child: Text(songs[index]['duration']!,style: const TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
