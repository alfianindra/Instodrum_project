import 'package:instodrum/util/bubble_stories.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  final List people = ['Hansen', 'Alfian', 'Maryanto', 'Carlouis', 'Witriatna', 'Novandry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
            'Instodrum', 
            style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    //buat backend --
                  },
                  child: Icon(Icons.add)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.favorite),
                ),//membuat jarak pada logo
                Icon(Icons.send),
              ],
            )
        ],),
      ),
      body: Column(
        children: [
          //STORY
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length ,
              itemBuilder: (context,index) {
              return BubbleStories(
                
                text: people[index]);
            })
          ),

          
         
        ],
      )
    );
  }
}