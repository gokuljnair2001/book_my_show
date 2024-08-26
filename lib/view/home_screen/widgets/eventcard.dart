import 'package:book_my_show/view/dummydb/dummydb.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.title,
    this.imagesList = const [],
  });

  final String title;
  final List imagesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: Text(
            title,
            style:
                TextStyle(fontSize: 24, color: Colors.white, letterSpacing: -1),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.separated(
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 5),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 230,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(imagesList[index]['image']))),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        Dummydb.programList[index]['date'],
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
              itemCount: Dummydb.programList.length),
        ),
      ],
    );
  }
}
