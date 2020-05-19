import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagramclone/constants.dart';
import 'package:instagramclone/models/feed.dart';

class FeedWidget extends StatelessWidget {
  final Feed feed;
  FeedWidget({this.feed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 8.0,
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage(feed.userImage),
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(feed.username, style: kTitleStyle),
                    Text(
                      feed.location,
                      style: kSubtitleStyle.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Image.asset(feed.image, fit: BoxFit.fill),
          Container(
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/favorite.svg",
                      width: 27.0,
                    ),
                    SizedBox(width: 15.0),
                    SvgPicture.asset(
                      "assets/comment.svg",
                      width: 27.0,
                    ),
                    SizedBox(width: 15.0),
                    SvgPicture.asset(
                      "assets/message.svg",
                      width: 27.0,
                    ),
                    SizedBox(width: 15.0),
                  ],
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/bookmark.svg",
                  width: 20.0,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 5.0),
            child: Text(
              "${feed.like} likes",
              style: kTitleStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 5.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "${feed.username}  ",
                    style: kTitleStyle,
                  ),
                  TextSpan(
                    text: feed.caption,
                    style: kSubtitleStyle,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 5.0),
            child: Text(
              "View all ${feed.comment} comments",
              style: kSubtitleStyle.copyWith(
                color: Colors.black38,
                fontSize: 15.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 5.0),
            child: Text(
              "${feed.time} hours ago",
              style: kTimeStyle,
            ),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
