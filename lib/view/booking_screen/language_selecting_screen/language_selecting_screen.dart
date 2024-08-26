import 'package:book_my_show/view/booking_screen/theatre_booking_screen/theatre_booking_screen.dart';
import 'package:book_my_show/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class LanguageSelectingScreen extends StatelessWidget {
  const LanguageSelectingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Image.asset(ImageConstant.AVATARPOS),
          Text(
            'Avatar : the way of water',
            style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(.6)),
          ),
          Text(
            'Select the Language And Format',
            style: TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 31,
                            color: Colors.grey.withOpacity(.2),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'English',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                            child: ListView.separated(
                                itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    TheatreBookingScreen(),
                                              ));
                                        },
                                        child: Container(
                                          height: 15,
                                          width: 25,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.redAccent),
                                        ),
                                      ),
                                    ),
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 10,
                                    ),
                                itemCount: 2),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
