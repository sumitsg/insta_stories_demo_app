import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_stories_demo_app/pages/instagram/data.dart';
import 'package:insta_stories_demo_app/homePage.dart';
import 'package:insta_stories_demo_app/models/story_model.dart';
import 'package:insta_stories_demo_app/models/user_models.dart';
import 'package:insta_stories_demo_app/pages/whatsapp/status_screen.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}
