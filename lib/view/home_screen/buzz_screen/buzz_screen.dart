import 'package:book_my_show/view/dummydb/dummydb.dart';
import 'package:book_my_show/view/home_screen/buzz_screen/event_page/event_page.dart';
import 'package:book_my_show/view/home_screen/home_screen.dart';
import 'package:book_my_show/view/home_screen/widgets/ticketcard.dart';
import 'package:flutter/material.dart';

class BuzzScreen extends StatelessWidget {
  const BuzzScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfe1E1E1E),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 23,
          ),
        ),
        title: Text(
          'Buzz',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            height: 100,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
                itemBuilder: (context, index) => CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.deepOrange,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(Dummydb.circleList[index]),
                        radius: 38,
                      ),
                    ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                      width: 3,
                    ),
                itemCount: Dummydb.circleList.length),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 0.8,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SizedBox(
            height: 50,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding:
                    EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 9),
                itemBuilder: (context, index) => Container(
                      width: 85,
                      height: 58,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(9)),
                      child: Center(
                        child: Text(
                          'genre',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: 4),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 0.6,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SizedBox(
            height: 13,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(height: 5),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventPage(),
                    ));
              },
              child: TicketCard(
                image: Dummydb.eventList1[index]['image'],
                title: Dummydb.eventList1[index]['title'],
                time: Dummydb.eventList1[index]['time'],
              ),
            ),
            itemCount: Dummydb.eventList1.length,
          ),
        ],
      )),
    );
  }
}
