import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/avatars.dart';
import 'package:instagram_clone/widgets/my_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar,
        body: Container(
          child: ListView(
            children: [
              Avatars(),
              for (var i = 0; i < 6; i++)

              MyCard(),

            ],
          ),
        ));
  }

  AppBar get topBar {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add_box_outlined,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Center(
          child: Text(
        "Instagram",
        style: TextStyle(color: Colors.black),
      )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
              color: Colors.black,
            ))
      ],
    );
  }
}
