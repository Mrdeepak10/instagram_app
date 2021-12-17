import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          cardHeader(),
          cardImage(),
          cardIcons(),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 5),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '89 Likes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1HwDWH-6kaTv8dsZqmOfyo9qkl-kE-5y31A&usqp=CAU'"),
                    ),
                    Text(
                      'Username',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('This is the Demo app Description etc.'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container cardIcons() {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_outlined),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_border),
          ),
        ],
      ),
    );
  }

  Container cardImage() {
    return Container(
      height: 280,
      width: 360,
      child: Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf1VzCzl6Ljjgousy7oYhJCp8m2Iy1x-jjJw&usqp=CAU",
        fit: BoxFit.fill,
      ),
    );
  }

  Container cardHeader() {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1HwDWH-6kaTv8dsZqmOfyo9qkl-kE-5y31A&usqp=CAU'"),
          ),
          Text('user name'),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_book))
        ],
      ),
    );
  }
}
