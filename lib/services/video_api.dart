import 'package:http/http.dart' as http;
import 'package:video_player/models/video.dart';

Future <List<Video>> getVideos() async {
  final response = await http.get(Uri.parse('https://orangevalleycaa.org/api/videos'));
  if (response.statusCode == 200) {
    return videoFromJson(response.body);
  } else {
    return[];
  }
}