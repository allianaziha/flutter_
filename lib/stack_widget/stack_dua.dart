import 'package:flutter/material.dart';

class StackTwo extends StatelessWidget {
  const StackTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 200, height: 200, color: Colors.blue,),
        Positioned(top: 87, left: 87.5, child: Icon(Icons.star)),
        Positioned(top: 10, left: 10, child: Icon(Icons.star)),
        Positioned(top: 10, left: 160, child: Icon(Icons.star)),
        Positioned(top: 170, left: 10, child: Icon(Icons.star)),
        Positioned(top: 170, left: 160, child: Icon(Icons.star)),
      ],
    );
  }
}