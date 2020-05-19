import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagramclone/models/feed.dart';
import 'package:instagramclone/models/stories.dart';
import 'package:instagramclone/views/story_view.dart';
import 'package:instagramclone/widgets/feed_widget.dart';
import 'package:instagramclone/widgets/stories_widget.dart';
import 'package:instagramclone/widgets/user_Story_Widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/camera.svg",
            width: 10.0,
            fit: BoxFit.contain,
          ),
        ),
        title: Image.asset(
          "assets/logo.png",
          height: 30.0,
        ),
        actions: <Widget>[
          SvgPicture.asset(
            "assets/message.svg",
            width: 30.0,
          ),
          SizedBox(width: 18.0),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 100.0,
                child: ListView.builder(
                  itemCount: storyList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var stories = storyList[index];
                    if (index == 0) {
                      return UserStoriesWidget();
                    } else {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StoryPage(
                                  stories: stories,
                                ),
                              ));
                        },
                        child: StoriesWidget(stories: stories),
                      );
                    }
                  },
                ),
              ),
              ListView.builder(
                itemCount: dummyFeed.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var feed = dummyFeed[index];
                  return FeedWidget(feed: feed);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
