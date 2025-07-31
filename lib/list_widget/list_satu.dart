import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class ListSatu extends StatelessWidget {
  const ListSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'listView Builder',
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            child: Text('Text' + index.toString()),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}