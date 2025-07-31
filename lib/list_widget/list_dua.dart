import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color': Colors.teal, 'rasa': 'matcha'},
    {'color': Colors.blueAccent, 'rasa': 'mint'},
    {'color': Colors.purpleAccent, 'rasa': 'grape'},
    {'color': Colors.pinkAccent, 'rasa': 'strawberry'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "List Builder",
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i) {
         final data = listData[i];
         return Container(
          margin: EdgeInsets.all(100),
          color: data['color'],
          width: 200,
          height: 200,
          child: Center(child: Text(data['rasa'])),
         );
       }
      ),
    );
  }
}