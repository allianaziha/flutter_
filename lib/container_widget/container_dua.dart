import 'package:allia_project/container_widget/container_satu.dart';
import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
            Colors.teal,
            Colors.lightBlueAccent,
            Colors.purpleAccent,
            Colors.pinkAccent,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft
          ),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)
                => ContainerSatu())
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent
            ),
            child: Text(
              'Pindah ke Halaman 1',
              style: TextStyle(color: Colors.white),
              ), 
          ),
        ),
      ),
    );
  }
}