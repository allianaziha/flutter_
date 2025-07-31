import 'package:allia_project/container_widget/container_dua.dart';
import 'package:allia_project/container_widget/container_satu.dart';
import 'package:allia_project/form_widget/input_screen.dart';
import 'package:allia_project/grid_view/grid_satu.dart';
import 'package:allia_project/grid_view/grid_view.dart';
import 'package:allia_project/katalog_wisata/grid_wisata.dart';
import 'package:allia_project/list_widget/list_dua.dart';
import 'package:allia_project/list_widget/list_satu.dart';
import 'package:allia_project/list_widget/list_screen.dart';
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
      home: InputFormScreen()
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