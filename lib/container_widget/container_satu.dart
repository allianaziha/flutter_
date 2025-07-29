import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.blueGrey,
        width: 200,
        height: 200,
        child: Container(
          margin: EdgeInsets.all(8),
          color: Colors.grey,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
          child: Text('Text')),
        ),
      ),
    );
  }
}