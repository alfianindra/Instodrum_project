import 'package:flutter/material.dart';

class ReelsPages extends StatelessWidget {
  const ReelsPages({Key? key}) :super(key: key);
  final double _iconSize = 28;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        IconButton(onPressed: () => {}, 
        icon: Icon(Icons.favorite_outline),
        iconSize: _iconSize,
        color: Colors.white,
        ),
        Text('1.34k', 
        style: TextStyle(
          fontSize: 10, 
          fontWeight: FontWeight.bold,
          color: Colors.white,),
        ),
        SizedBox(height: 10,),
        IconButton(onPressed: () => {}, 
        icon: Icon(Icons.chat_bubble_outline),
        iconSize: _iconSize,
        color: Colors.white,
        ),
        Text('22',
          style: TextStyle(
          fontSize: 10, 
          fontWeight: FontWeight.bold,
          color: Colors.white,),
        ),
        SizedBox(height: 10,),
        IconButton(onPressed: () => {}, 
        icon: Icon(Icons.send_outlined),
        iconSize: _iconSize,
        color: Colors.white,
        ),
        IconButton(onPressed: () => {}, 
        icon: Icon(Icons.more_horiz),
        iconSize: _iconSize,
        color: Colors.white,
        ),
        SizedBox(height: 10,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/avatar1.jpg'))
          ),
        ),
        SizedBox(
          height: 10,),
      ],
    );
  }
}