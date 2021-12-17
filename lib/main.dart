import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home.dart';

void main() {
  runApp(InstaApp());
}

class InstaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


