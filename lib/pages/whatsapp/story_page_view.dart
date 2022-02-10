import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  StoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(title: '''If you do not make time for your wellness,
you will be forced to make time for your illness.
#ReadThatAgain''', backgroundColor: Colors.red),
      StoryItem.pageImage(
        url:
            "https://images.unsplash.com/photo-1541233349642-6e425fe6190e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
        controller: _storyController,
        caption: 'easyy peasyy',
      ),
      StoryItem.pageImage(
          url:
              "https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif",
          controller: _storyController,
          imageFit: BoxFit.contain),
      StoryItem.pageVideo(
        'https://static.videezy.com/system/resources/previews/000/007/536/original/rockybeach.mp4',
        controller: _storyController,
        duration: const Duration(seconds: 10),
        imageFit: BoxFit.cover,
        shown: false,
      ),
      StoryItem.inlineImage(
          url:
              'https://images.unsplash.com/photo-1534103362078-d07e750bd0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
          controller: _storyController,
          roundedTop: true)
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        progressPosition: ProgressPosition.top,
        repeat: false,
        inline: false,
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        },
        onComplete: () => Navigator.pop(context),
      ),
    );
  }
}
