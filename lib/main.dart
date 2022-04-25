import 'package:flutter/material.dart';
import 'package:video_player/pages/home_page.dart';
import 'package:video_player/services/video_api.dart';
import  'pages/home_page.dart';
void main() {
  runApp( VideoPlayer());
}

class VideoPlayer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    getVideos().then((value) => print(value.length));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}