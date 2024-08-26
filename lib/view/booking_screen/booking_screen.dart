import 'package:book_my_show/view/booking_screen/language_selecting_screen/language_selecting_screen.dart';
import 'package:book_my_show/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 353,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageConstant.AVATARPOS))),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 160,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.black,
                        Colors.transparent,
                      ])),
                  child: Text(
                    'AVATAR',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mystery , Thriller |',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                ' English |',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                ' 2 hr 56 min |',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '22 Dec',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Image.asset(ImageConstant.STAR),
          Text(
            'Summary',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '''
Join us for an unforgettable summer music festival featuring top artists from around the world. Enjoy a day full of live performances, food trucks, and interactive activities for all ages. Don't miss out on this vibrant celebration of music and community. 
''',
            textAlign: TextAlign.justify,
            style:
                TextStyle(fontSize: 15.5, color: Colors.white.withOpacity(.6)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Cast',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => CircleAvatar(
                radius: 45,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage(ImageConstant.AVATAR1),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguageSelectingScreen(),
                ));
          },
          child: Container(
            height: 53,
            width: 332,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                'Book Tickets',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 23),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
