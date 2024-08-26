import 'package:book_my_show/view/home_screen/buzz_screen/buzz_screen.dart';
import 'package:book_my_show/view/home_screen/home_screen.dart';
import 'package:book_my_show/view/home_screen/notification_screen/notification_screen.dart';
import 'package:book_my_show/view/home_screen/profile_page/profile_page.dart';
import 'package:book_my_show/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List screen = [
    HomeScreen(),
    BuzzScreen(),
    NotificationScreen(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
              screen[selectedIndex] = screen[value];
            });
          },
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(ImageConstant.LOGO),
                color: Colors.red,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(ImageConstant.NAV1),
                color: Colors.red,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, color: Colors.red),
                label: 'notif',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.red), label: 'prof'),
          ]),
    );
  }
}
