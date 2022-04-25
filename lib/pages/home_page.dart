import 'package:flutter/material.dart';

import '../models/video.dart';
import '../utils/helper.dart';
import '../widget/videos_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
        backgroundColor: Colors.black,
        
      ),
      body: Container(
        color: Colors.black87,
        child: VideosGrid(videos: getFakeVideos()),)
      
    );
  }
}