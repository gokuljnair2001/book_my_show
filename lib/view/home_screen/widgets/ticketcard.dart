import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
    required this.title,
    required this.time,
    required this.image,
  });
  final String title;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 118,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 97,
                width: 97,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image)),
                    borderRadius: BorderRadius.circular(13)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        time,
                        style: TextStyle(color: Colors.black.withOpacity(.7)),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Icon(
                        Icons.ios_share_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
