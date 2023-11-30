import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ReelsDetail extends StatelessWidget {
  const ReelsDetail({Key? key,}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            ListTile(
              dense: true,
              minLeadingWidth: 0,
              horizontalTitleGap: 12,
              title: 
                Text('Dustin - follow',
                style: 
                TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.w500),
              ),
              leading: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage('assets/avatar1.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: 
                ExpandableText(
                  'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                  style: TextStyle(fontSize: 12.5, 
                  color: Colors.white, 
                  fontWeight: FontWeight.w400),
                  expandText: 'more',
                  collapseText: 'less', 
                  expandOnTextTap: true,
                  collapseOnTextTap: true,
                  maxLines: 1,
                  linkColor: Colors.grey,
                  ),
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0,
              horizontalTitleGap: 12,
              title: Text(
                'Dustin - original music',
                style: 
                TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.w500),
              ),
              leading:Icon(Icons.graphic_eq_outlined, size: 16, color: Colors.white,)
            ),
          ],
        ),
    );
  }
}