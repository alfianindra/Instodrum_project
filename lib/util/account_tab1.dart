import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  final List<String> userPosts = [];

  List<String> imageList = [
    'https://static.vecteezy.com/system/resources/thumbnails/025/067/762/small_2x/4k-beautiful-colorful-abstract-wallpaper-photo.jpg',
    'https://static.photocdn.pt/images/articles/2019/07/09/what_is_candid_photography_tutorial-1.jpg',
    'https://www.lookslikefilm.com/wp-content/uploads/2020/01/Ern-Falkenham-734x1024.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 3,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.blue[100],
            child: Image.network(imageList[index]),
          ),
        );
      },
    );
  }
}
