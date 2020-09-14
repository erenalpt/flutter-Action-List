import 'package:flutter/material.dart';
import 'package:listeler/ui/action_list.dart';
import 'package:listeler/ui/gridclass.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Listeler",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange), // Tema Atama
    home: Scaffold(
        // Home Genellikle Scaffold geçer
        appBar: AppBar(
          title: Text(
            "ListView Lesson",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: GridClassOrnek()),
  ));
}
