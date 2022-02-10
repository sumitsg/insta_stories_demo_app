import 'package:flutter/material.dart';
import 'package:insta_stories_demo_app/pages/instagram/data.dart';
import 'package:insta_stories_demo_app/main.dart';
import 'package:insta_stories_demo_app/pages/instagram/story_screen.dart';
import 'package:insta_stories_demo_app/pages/whatsapp/status_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories Demo App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoryScreen(stories: stories),
                  ),
                );
              },
              child: const Text('Instagram Stories Demo'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StatusScreen()));
              },
              child: const Text('What\'s App Stories Demo'),
            )
          ],
        ),
      ),
    );
  }
}
