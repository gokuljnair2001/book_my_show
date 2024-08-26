import 'package:book_my_show/view/booking_screen/booking_screen.dart';
import 'package:book_my_show/view/dummydb/dummydb.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.title, this.isViewVisible = false});
  final String title;
  final bool isViewVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Row(
            children: [
              Text(
                'New Releases',
                style: TextStyle(
                    color: Colors.white, fontSize: 24, letterSpacing: -1),
              ),
              Spacer(),
              Visibility(
                visible: isViewVisible,
                child: Text(
                  'view all',
                  style: TextStyle(
                      color: Colors.red, fontSize: 19, letterSpacing: -1),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 243,
          child: ListView.separated(
              padding: EdgeInsets.all(9),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingScreen(),
                          ));
                    },
                    child: Container(
                      height: 243,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Dummydb.movieList2[index])),
                          borderRadius: BorderRadius.circular(12)),
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(20),
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: Dummydb.movieTicketList.length),
        ),
      ],
    );
  }
}
