import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';

var dio = Dio();

class Song {
  String songName;
  String artist;
  String playUrl;
  String img;

  Song({
    required this.songName,
    required this.artist,
    required this.playUrl,
    required this.img,
  });

  Map<String, dynamic> toJson() => {
        'song_name': songName,
        'artist': artist,
        'play_url': playUrl,
        'img': img,
      };

  @override
  String toString() => '$songName by $artist';
}

Future<List<Song>> fetchUniqueSongs(int count) async {
  List<Song> songs = [];
  Set<String> uniqueUrls = {};
  Set<String> uniqueSongNamesAndArtists = {};

  while (songs.length < count) {
    try {
      final response = await dio.get('https://api.cenguigui.cn/api/netease/');
      if (response.statusCode == 200 && response.data['code'] == 200) {
        var data = response.data['data'];
        String playUrl = data['play_url'];
        String songKey = '${data['song_name']} by ${data['artist']}';

        if (!uniqueUrls.contains(playUrl) && !uniqueSongNamesAndArtists.contains(songKey)) {
          uniqueUrls.add(playUrl);
          uniqueSongNamesAndArtists.add(songKey);
          songs.add(Song(
            songName: data['song_name'],
            artist: data['artist'],
            playUrl: playUrl,
            img: data['img'],
          ));
          print('Added new song: $songKey');
        } else {
          print('Duplicate song found, skipping: $songKey');
        }
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  return songs;
}

Future<void> writeSongsToFile(List<Song> songs, String filePath) async {
  List<Map<String, dynamic>> jsonList = songs.map((song) => song.toJson()).toList();
  String jsonString = const JsonEncoder.withIndent('  ').convert(jsonList);

  try {
    File file = File(filePath);
    await file.writeAsString(jsonString);
    print('Songs written to file successfully.');
  } catch (e) {
    print('Error writing to file: $e');
  }
}

void main() {
  fetchData();
}

void fetchData() async {
  List<Song> songs = await fetchUniqueSongs(10);
  String filePath = 'songs.json';
  await writeSongsToFile(songs, filePath);
}
