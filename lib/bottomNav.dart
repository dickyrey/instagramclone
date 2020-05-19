import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramclone/models/bottom_nav_model.dart';
import 'package:instagramclone/views/account.dart';
import 'package:instagramclone/views/add.dart';
import 'package:instagramclone/views/browse.dart';
import 'package:instagramclone/views/home.dart';
import 'package:instagramclone/views/notifications.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static List<Widget> _bottomNavView = [
    Home(),
    Browse(),
    Add(),
    Notifications(),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: _navBarItem
            .map(
              (f) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  f.icon,
                  width: 24.0,
                ),
                activeIcon: SvgPicture.asset(
                  f.activeIcon,
                  width: 24.0,
                ),
                title: Text(f.title),
              ),
            )
            .toList(),
      ),
    );
  }
}

List<NavBarModel> _navBarItem = [
  NavBarModel(
    icon: "assets/home.svg",
    activeIcon: "assets/home_2.svg",
    title: "Home",
  ),
  NavBarModel(
    icon: "assets/search.svg",
    activeIcon: "assets/search_2.svg",
    title: "Search",
  ),
  NavBarModel(
    icon: "assets/add.svg",
    activeIcon: "assets/add.svg",
    title: "Add",
  ),
  NavBarModel(
    icon: "assets/favorite.svg",
    activeIcon: "assets/favorite_2.svg",
    title: "Notifications",
  ),
  NavBarModel(
    icon: "assets/account.svg",
    activeIcon: "assets/account_2.svg",
    title: "Account",
  ),
];
