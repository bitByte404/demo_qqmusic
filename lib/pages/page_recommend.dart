import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_qqmusic/generated/assets.dart';
import 'package:flutter/material.dart';

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _PageContent());
  }
}

class _PageContent extends StatelessWidget {
  const _PageContent({super.key});

  @override
  Widget build(BuildContext context) {
    var fullSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi 阿伟 今日为你推荐',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: fullSize.height * 0.23,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          height: 150,
                          imageUrl:
                              "https://s2.loli.net/2024/12/19/jfQVOagwEr7JM2u.png",
                          // placeholder: (context, url) => const CircularProgressIndicator(),
                          // errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                        // child: Image.network(
                        //   'https://s2.loli.net/2024/12/19/jfQVOagwEr7JM2u.png',
                        //   height: 150,
                        // ),
                      ),
                      const Text(
                        '零几年听的情歌-GG啵',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                      ),
                      const Text(
                        '猜你喜欢',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: fullSize.width * 0.02,
                ),
                Flexible(
                    flex: 1,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                                height: 150,
                                imageUrl:
                                    'https://s2.loli.net/2024/12/19/U6xjYHT9tD2gVWh.png')),
                        const Text(
                          '夏恋注意報-SHISHA',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                        ),
                        const Text(
                          '百万收藏',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                        ),
                      ],
                    )),
                SizedBox(
                  width: fullSize.width * 0.02,
                ),
                Flexible(
                    flex: 1,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl:  'https://s2.loli.net/2024/12/19/Y7E6OpWXJ2SNfAK.png',
                            height: 150,
                          ),
                        ),
                        const Text(
                          'The Very First Nigh',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                        ),
                        const Text(
                          '猜你喜欢',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                        ),
                      ],
                    )),
                SizedBox(
                  width: fullSize.width * 0.02,
                ),
                Flexible(
                    flex: 1,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl:  'https://s2.loli.net/2024/12/19/zEhm7M23ZXw9QfI.png',
                            height: 150,
                          ),
                        ),
                        const Text(
                          '杜比专区',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                        ),
                        // const Text('猜你喜欢', style: TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),),
                      ],
                    )),
                SizedBox(
                  width: fullSize.width * 0.02,
                ),
                Flexible(
                    flex: 1,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl:  'https://s2.loli.net/2024/12/19/L25z63ahVUxcTwb.png',
                            height: 150,
                          ),
                        ),
                        const Text(
                          '星<の(星尘之曲)',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                        ),
                        const Text(
                          '新歌推荐',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          ...List.generate(4, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '听这些会更开心哦',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: fullSize.height * 0.23,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl:  'https://s2.loli.net/2024/12/19/zEhm7M23ZXw9QfI.png',
                                  height: 150,
                                ),
                              ),
                              const Text(
                                '杜比专区',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                              // const Text('猜你喜欢', style: TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),),
                            ],
                          )),
                      SizedBox(
                        width: fullSize.width * 0.02,
                      ),
                      Flexible(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                 imageUrl:  'https://s2.loli.net/2024/12/19/U6xjYHT9tD2gVWh.png',
                                  height: 150,
                                ),
                              ),
                              const Text(
                                '夏恋注意報-SHISHA',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                              const Text(
                                '百万收藏',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: fullSize.width * 0.02,
                      ),
                      Flexible(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(imageUrl: 'https://s2.loli.net/2024/12/19/Y7E6OpWXJ2SNfAK.png', height: 150,)
                              ),
                              const Text(
                                'The Very First Nigh',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                              const Text(
                                '猜你喜欢',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: fullSize.width * 0.02,
                      ),
                      Flexible(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(imageUrl: 'https://s2.loli.net/2024/12/19/zEhm7M23ZXw9QfI.png', height: 150,)
                              ),
                              const Text(
                                '杜比专区',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                              // const Text('猜你喜欢', style: TextStyle(fontSize: 14, color: Color(0xFF4B4B4B)),),
                            ],
                          )),
                      SizedBox(
                        width: fullSize.width * 0.02,
                      ),
                      Flexible(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(imageUrl: 'https://s2.loli.net/2024/12/19/U6xjYHT9tD2gVWh.png', height: 150,)
                              ),
                              const Text(
                                '夏恋注意報-SHISHA',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                              const Text(
                                '百万收藏',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: fullSize.width * 0.02,
                      ),
                      Flexible(
                          flex: 1,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(imageUrl: 'https://s2.loli.net/2024/12/19/L25z63ahVUxcTwb.png', height: 150,),
                                // child: Image.network(
                                //   'https://s2.loli.net/2024/12/19/L25z63ahVUxcTwb.png',
                                //   height: 150,
                                // ),
                              ),
                              const Text(
                                '星<の(星尘之曲)',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                              const Text(
                                '新歌推荐',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4B4B4B)),
                              ),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
