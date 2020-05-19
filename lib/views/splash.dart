import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagramclone/bottomNav.dart';
import 'package:instagramclone/constants.dart';
import 'package:instagramclone/views/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    return Timer(Duration(milliseconds: 4500), _navigatorPage);
  }

  void _navigatorPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return BottomNav();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
    //for navigate to home page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200),
            Center(
              child: Image.asset(
                "assets/instalogo.png",
                fit: BoxFit.fill,
                width: 100.0,
              ),
            ),
            Spacer(),
            Text(
              "FROM",
              style: kSubtitleStyle.copyWith(fontSize: 16.0),
            ),
            SizedBox(height: 12.0),
            Text(
              "FLUTTER WORLD",
              style: kTitleStyle.copyWith(
                fontSize: 25.0,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}
