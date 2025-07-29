import 'package:allia_project/container_widget/container_dua.dart';
import 'package:allia_project/container_widget/container_satu.dart';
import 'package:allia_project/main_layout.dart';
import 'package:allia_project/row_column_widget/column_satu.dart';
import 'package:allia_project/row_column_widget/latihan.dart';
import 'package:allia_project/row_column_widget/latihan_dua.dart';
import 'package:allia_project/row_column_widget/latihan_satu.dart';
import 'package:allia_project/row_column_widget/row_satu.dart';
import 'package:allia_project/stack_widget/stack_dua.dart';
import 'package:allia_project/stack_widget/stack_satu.dart';
import 'package:allia_project/stack_widget/stack_tiga.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LatihanDua()
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: const Color.fromARGB(255, 127, 196, 252),
          ),
        ),
      ),
    );
  }
}