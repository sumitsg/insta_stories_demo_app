import 'package:insta_stories_demo_app/models/user_models.dart';

enum MediaType {
  image,
  video,
}

class Story {
  final String url;
  final MediaType media;
  final Duration duration;
  final UserModel user;

  Story(
      {required this.url,
      required this.media,
      required this.duration,
      required this.user});
}
