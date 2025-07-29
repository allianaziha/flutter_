import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class StackThree extends StatelessWidget {
  const StackThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Image With Stack',
      body: Stack(
        children: [
          Image.network(
            'https://www.keep-calm-and-eat-ice-cream.com/wp-content/uploads/2022/08/Ice-cream-sundae-hero-11.jpg'
          ),
          Positioned(bottom: 10, left: 10, child: Text('Ice Cream Seger'),)
        ],
      ),
    );
  }
}