import 'package:book_my_show/view/dummydb/dummydb.dart';
import 'package:book_my_show/view/home_screen/widgets/eventcard.dart';
import 'package:book_my_show/view/home_screen/widgets/moviecard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfe1E1E1E),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'It All Started Here ',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        'Kochi',
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xfeE7384D),
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Color(0xfeE7384D),
                        size: 35,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 180,
                child: PageView.builder(
                  itemCount: Dummydb.movieList1.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Dummydb.movieList1[index])),
                    ),
                  ),
                )),
            SizedBox(
              height: 29,
            ),
            SizedBox(
              height: 55,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                itemCount: Dummydb.iconList.length,
                separatorBuilder: (context, index) => SizedBox(
                  width: 50,
                ),
                itemBuilder: (context, index) => Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(Dummydb.iconList[index]['icon']),
                        SizedBox(height: 2),
                        Text(
                          Dummydb.iconList[index]['title'],
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MovieCard(
              title: "New Releases",
              isViewVisible: true,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('The Best Event This Week',
                  style: TextStyle(fontSize: 24, color: Color(0xfeF3F3F4))),
            ),
            SizedBox(
              height: 250,
              child: GridView.builder(
                padding: EdgeInsets.all(9),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 3),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Dummydb.eventList[index])),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            SizedBox(height: 20),
            EventCard(
              title: 'The Best Of This Week',
              imagesList: Dummydb.programList,
            ),
            EventCard(
              title: 'Popular Events',
              imagesList: Dummydb.programList2,
            )
          ],
        ),
      ),
    );
  }
}
