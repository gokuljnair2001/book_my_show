import 'package:book_my_show/view/home_screen/buzz_screen/buzz_screen.dart';
import 'package:book_my_show/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Stack(children: [
                  Image.asset(
                    ImageConstant.EVENT,
                    height: 311,
                  ),
                  Positioned(
                      top: 35,
                      left: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BuzzScreen(),
                              ));
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.4),
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ))
                ]),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Show',
                        style: TextStyle(
                            fontSize: 13, color: Colors.white.withOpacity(.5)),
                      ),
                      Row(
                        children: [
                          Text(
                            ' Fun Fabulous Party Must \n Attend Nye in Goa',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Spacer(),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Dec 10',
                                style: TextStyle(
                                    fontSize: 14.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        '8 : 00 p m',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.5), fontSize: 17),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37),
                  child: SizedBox(
                    height: 32,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                        width: 76,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text('data')),
                      ),
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                      itemCount: 2,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 17),
                  child: Text(
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    '''Join us for an unforgettable summer music festival featuring
top artists from around the world. Enjoy a day full of live
performances, food trucks, and interactive activities for all
ages. Don't miss out on this vibrant celebration of music and
community.''',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white.withOpacity(.6),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 9),
                      child: Text(
                        'LOCATION',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Center(
                      child: Stack(children: [
                        Image.asset(
                          ImageConstant.LOCATION,
                          height: 150,
                          width: 315,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                              height: 415,
                              decoration: BoxDecoration(color: Colors.red)),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 375,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xfe121212),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PRICE',
                    style: TextStyle(
                        fontSize: 16, color: Colors.white.withOpacity(.5)),
                  ),
                  Row(
                    children: [
                      Text(
                        '699 R S',
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Buy a ticket',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            Image.asset(ImageConstant.TICKET2)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
