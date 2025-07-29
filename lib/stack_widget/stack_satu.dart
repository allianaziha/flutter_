import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class StackOne extends StatelessWidget {
  const StackOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Stack',
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(width: 200, height: 200, color: Colors.blueAccent,),
          Container(width: 150, height: 100, color: Colors.purpleAccent,),
          Container(width: 100, height: 50, color: Colors.pinkAccent,),
        ],
      ),
    );
  }
}