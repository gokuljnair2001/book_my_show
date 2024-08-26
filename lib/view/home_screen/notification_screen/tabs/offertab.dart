import 'package:book_my_show/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class Offertab extends StatelessWidget {
  const Offertab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              ImageConstant.OFFER,
            ),
          ),
          Text(
            'There Is No Offer For You !',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
