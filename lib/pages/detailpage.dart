import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String tag;

  const DetailPage({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Image')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: tag,
            child: CircleAvatar(
              backgroundImage: AssetImage(_getImagePath(tag)),
              radius: 250,
            ),
          ),
        ),
      ),
    );
  }

  String _getImagePath(String tag) {
    switch (tag) {
      case 'avatarTag1':
        return 'assets/samurai1.jpg';
      case 'avatarTag2':
        return 'assets/samurai2.jpg';
      case 'avatarTag3':
        return 'assets/uk.jpg';
      default:
        return '';
    }
  }
}
