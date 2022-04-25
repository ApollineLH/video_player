// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../models/video.dart';

class VideosGrid extends StatelessWidget {
 final List <Video> videos;
  VideosGrid({required this.videos});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        for (var video in videos)
          _VideoTile(
           imageUrl: video.thumbnail,
           title: video.name,
            )
      ]
      
    );
  }
}
class _VideoTile extends StatelessWidget {
  final  String ? imageUrl ,  title;
  const _VideoTile({ required this.imageUrl, required  this.title });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //ajouter un titre
           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
               decoration: BoxDecoration(
                
                 color: Colors.black.withOpacity(0.5),
               ),
               padding: const EdgeInsets.all(8.0),
               child: Text(
                 title!,
                 textAlign: TextAlign.center,
                 style: const TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                 ),
               ),
             ),
           )
           
          ],
        ),
      );
   
      
  }
}