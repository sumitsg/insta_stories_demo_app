// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:insta_stories_demo_app/pages/whatsapp/story_page_view.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('What\'s app Status'),
      ),
      body: Container(
        color: const Color(0xfff2f2f2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              elevation: 1.0,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20,
                          width: 20,
                          color: Colors.green,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    'My Status',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Tap to add status update'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Viwed Updates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                    ),
                    title: Text(
                      "Pat Brakus",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Today, 20:16pm'),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
