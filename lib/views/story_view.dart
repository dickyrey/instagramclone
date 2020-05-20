import 'package:flutter/material.dart';
import 'package:instagramclone/constants.dart';
import 'package:instagramclone/models/stories.dart';
import 'package:story_view/story_view.dart';

class StoryPage extends StatefulWidget {
  final Stories stories;
  StoryPage({this.stories});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final storyController = StoryController();
  String time;

  @override
  void initState() {
    super.initState();
    widget.stories.storiesImage.map((e) => time = e.time).toList();
  }

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            StoryView(
              controller: storyController,
              onStoryShow: (s) {
                print("Showing a story");
              },
              onComplete: () {
                Navigator.pop(context);
              },
              progressPosition: ProgressPosition.top,
              repeat: false,
              storyItems: widget.stories.storiesImage
                  .map(
                    (e) => StoryItem.pageProviderImage(
                      AssetImage(e.image),
                      imageFit: BoxFit.contain,
                      duration: Duration(seconds: 3),
                    ),
                  )
                  .toList(),
            ),
            Positioned(
              top: 45.0,
              left: 12.0,
              child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18.0,
                      backgroundImage: AssetImage(widget.stories.image),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      widget.stories.username,
                      style: kTitleStyle.copyWith(color: Colors.white),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "$time ago",
                      style: kTitleStyle.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
