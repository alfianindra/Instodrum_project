import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  final List<String> userPosts = [];

  List<String> imageList = [
    'https://skyryedesign.com/wp-content/uploads/2017/02/A-M-R-E-L-S-H-A-M-Y.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 1,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.green[100],
            child: Image.network(imageList[index]),
          ),
        );
      },
    );
  }
}
