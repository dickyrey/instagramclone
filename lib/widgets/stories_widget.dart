import 'package:flutter/material.dart';
import 'package:instagramclone/constants.dart';
import 'package:instagramclone/models/stories.dart';

class StoriesWidget extends StatelessWidget {
  final Stories stories;
  StoriesWidget({this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.0,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.redAccent,
                width: 2.0,
              ),
            ),
            child: Container(
              width: 70.0,
              height: 70.0,
              margin: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(stories.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            stories.username,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: kStoryStyle,
          )
        ],
      ),
    );
  }
}
