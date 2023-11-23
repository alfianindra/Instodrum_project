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
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    'assets/avatar1.jpg',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
