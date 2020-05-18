import 'package:flutter/material.dart';
import 'package:instagramclone/constants.dart';

class UserStoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: 86.0,
            margin: EdgeInsets.only(left: 5.0),
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
                      color: Colors.white,
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
                        image: AssetImage("assets/ve.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Your Story",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: kStoryStyle,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30.0,
            right: 10.0,
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
