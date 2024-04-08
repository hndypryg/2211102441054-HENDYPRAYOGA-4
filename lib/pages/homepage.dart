import 'package:flutter/material.dart';
import 'detailpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(tag: 'avatarTag1')),
                );
              },
              child: Hero(
                tag: 'avatarTag1',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/samurai1.jpg'),
                  radius: 50,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(tag: 'avatarTag2')),
                );
              },
              child: Hero(
                tag: 'avatarTag2',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/samurai2.jpg'),
                  radius: 50,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(tag: 'avatarTag3')),
                );
              },
              child: Hero(
                tag: 'avatarTag3',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/uk.jpg'),
                  radius: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
