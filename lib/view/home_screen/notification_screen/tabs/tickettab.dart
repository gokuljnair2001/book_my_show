import 'package:book_my_show/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class Tickettab extends StatelessWidget {
  const Tickettab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              ImageConstant.TICKET,
            ),
          ),
          Text(
            'You Never Booked A Ticket !',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
