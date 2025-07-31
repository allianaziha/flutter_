import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class GridSatu extends StatelessWidget {
  const GridSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Grid Satu', 
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        children: [
          Container(color: Colors.teal, width: 200, child: Text('1')),
          Container(color: Colors.blueAccent, width: 200, child: Text('2')),
          Container(color: Colors.purpleAccent, width: 200, child: Text('3')),
          Container(color: Colors.pinkAccent, width: 200, child: Text('4')),
        ],
      ),
    );
  }
}