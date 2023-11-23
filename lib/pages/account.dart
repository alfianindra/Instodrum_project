import 'package:flutter/material.dart';
import 'package:instodrum/util/account_tab1.dart';
import 'package:instodrum/util/account_tab2.dart';
import 'package:instodrum/util/account_tab3.dart';
import 'package:instodrum/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                //profile picture
                Container(
                  
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://cdns.klimg.com/maverick-prod/feedImage/2023/9/5/1693902401730-m9b8o.webp'),
                    fit: BoxFit.fill),
                    shape: BoxShape.circle,
                  ),
                ),
                
                //posting, follower and following
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                    children: [
                      Text('3',
                        style: 
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Posts')
                    ],
                  ),
                  Column(
                    children: [
                      Text('4532',
                        style: 
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Followers')
                    ],
                  ),
                  Column(
                    children: [
                      Text('1109',
                        style: 
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Following')
                    ],
                  ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          //Name and bio
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instodrum_official',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    'Instodrum official account',
                  ),
                ),
                Text(
                  'www.InstoDrum.com',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
    
          //edit profile, ad tools and insights
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text('Edit Profile')),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text('Ad tools')),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text('Insights')),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10 ),
            child: Row(
              children: [         
              BubbleStories(text: 'story 1'),
              BubbleStories(text: 'story 2'),
              BubbleStories(text: 'story 3'),
              BubbleStories(text: 'story 4'),
              
            ],
           ),
          ),
          //tabbar
          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined, 
                color: Colors.grey
                ),
              ),
              Tab(
                icon: Icon(Icons.video_call, 
                color: Colors.grey
                ),
              ),
              Tab(
                icon: Icon(Icons.person_2_outlined, 
                color: Colors.grey
                ),
              ),
            ],
          ),

          Expanded(
            child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
            ]),
            )
          ],
        ),
      ),
    );
  }
}