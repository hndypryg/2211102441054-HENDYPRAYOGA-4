import 'package:flutter/material.dart';
import 'pages/homepage.dart'; // Import HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), // Set HomePage sebagai halaman utama
    );
  }
}
