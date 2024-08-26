import 'package:book_my_show/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:book_my_show/view/home_screen/home_screen.dart';
import 'package:book_my_show/view/home_screen/notification_screen/tabs/offertab.dart';
import 'package:book_my_show/view/home_screen/notification_screen/tabs/tickettab.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xfe1E1E1E),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBar(),),);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 23,
            ),
          ),
          title: Text(
            'Notifications',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.red,
              tabs: [
                Tab(
                  text: 'Offers & More',
                ),
                Tab(
                  text: 'Tickets',
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Offertab(),
            Tickettab(),
          ],
        ),
      ),
    );
  }
}
