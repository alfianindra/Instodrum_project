import 'package:flutter/material.dart';
import 'package:instodrum/util/reels_detail.dart';
import 'package:instodrum/util/reels_pages.dart';

void main() => runApp(UserReels());

class UserReels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Reels'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.photo_camera_outlined),
              onPressed: () {
                // Tambahkan aksi
              },
            ),
          ],
        ),
        body: 
        PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 6,
          itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration( 
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://picsum.photos/id/${index + 1047}/800/1080'))),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3), 
                          Colors.transparent],
                        begin: Alignment(0, -0.75),
                        end: Alignment(0, 0.1),
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3), 
                          Colors.transparent],
                        end: Alignment(0, -0.75),
                        begin: Alignment(0, 0.1),
                        )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                         Flexible(
                          flex: 14,
                           child: ReelsDetail()
                         ),
                          Flexible(
                            flex: 2,
                            child: ReelsPages(),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),            
            ),
          );
        }),
      ),
    );
  }
}
