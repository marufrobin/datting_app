import 'package:datting_app/config/consts.dart';
import 'package:datting_app/screen/feed_page.dart';
import 'package:datting_app/screen/inbox_page.dart';
import 'package:datting_app/screen/likes_page.dart';
import 'package:datting_app/screen/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FeedPage(),
    InboxPage(),
    LikesPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          gap: 8,
          activeColor: Colors.black,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: Duration(milliseconds: 400),
          tabBackgroundColor: Colors.grey[300]!,
          color: kColorDark,
          tabs: const [
            GButton(
              icon: Icons.home_rounded,
              text: 'Home',
            ),
            GButton(
              icon: Icons.inbox_rounded,
              text: 'Inbox',
            ),
            GButton(
              icon: Icons.favorite_rounded,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.person_rounded,
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
