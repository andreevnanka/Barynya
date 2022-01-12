import 'dart:async';
import 'dart:convert';
//import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

Future<Video> fetchVideo() async {
  final response = await http
      .get(Uri.parse('http://barynya.cherrydev.tech/api/exercise_set'));

  if (response.statusCode == 200) {
    return Video.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load array');
  }
}

class Video {
  final int id;
  final String name;
  final String instruction;
  final String video;

  Video({
    required this.name,
    required this.instruction,
    required this.id,
    required this.video,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      video: json['video'] as String,
      name: json['name'] as String,
      id: json['id'] as int,
      instruction: json['instruction'] as String,
    );
  }
}

// List<Video> parseVideos(String responseBody) {
//   final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
//
//   return parsed.map<Video>((json) => Video.fromJson(json)).toList();
// }
//
// Future<List<Video>> fetchVideos(http.Client client) async {
//   final response = await client
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
//
//   // Use the compute function to run parsePhotos in a separate isolate.
//   return parseVideos(response.body);

//
// class VideosList extends StatelessWidget {
//   const VideosList({Key? key, required this.videos}) : super(key: key);
//
//   final List<Video> videos;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text('${videos[0].id}');
//   }
// }