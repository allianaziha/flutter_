import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class latihan extends StatelessWidget {
  const latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Row Column',
      body: Center(
      child: Container(
        height: 70,
        width: double.infinity,
        color: Color.fromARGB(255, 174, 220, 243),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.call, size: 50, color: Colors.pinkAccent,), Text('Call')],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.navigation, size: 20, color: Colors.purpleAccent,), Text('Route')],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.share, color: Colors.blueAccent,), Text('Share')],
            ),
          ],
        ),
      ),
    ),
  );
}
}