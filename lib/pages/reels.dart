import 'package:flutter/material.dart';

void main() => runApp(UserReels());

class UserReels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reels'),
          backgroundColor: Colors.grey,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // Tambahkan aksi
              },
            ),
          ],
        ),
      ),
    );
  }
}
