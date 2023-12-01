import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  final List<String> userPosts = [];

  List<String> imageList = [
    'https://img.freepik.com/premium-photo/side-shot-hooded-man-fishing-generative-ai_96461-970.jpg',
    'https://c1.wallpaperflare.com/preview/373/573/299/backlit-black-and-white-dark-indoors.jpg',
    'https://c4.wallpaperflare.com/wallpaper/6/338/323/women-face-portrait-blonde-wallpaper-preview.jpg',
    'https://i.pinimg.com/1200x/17/dc/2b/17dc2b5d70226a776e6b78a600ec8610.jpg',
    'https://i.pinimg.com/736x/44/7b/e8/447be846475c78561cf69897cad59153.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.yellow[100],
            child: Image.network(imageList[index]),
          ),
        );
      },
    );
  }
}
