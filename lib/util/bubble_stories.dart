import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  
BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
              image: DecorationImage(
                image: NetworkImage('https://cdns.klimg.com/maverick-prod/feedImage/2023/9/5/1693902401730-m9b8o.webp'))
            )),
            SizedBox(
              height: 10,
            ),
            Text(text)
        ],
      ),
    );
  }
}