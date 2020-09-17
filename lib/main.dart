import 'package:flutter/material.dart';
//import 'package:listeler/ui/action_list.dart';
//import 'package:listeler/ui/customScrollandSliverAppBar.dart';
//import 'package:listeler/ui/gridclass.dart';
import 'package:listeler/ui/navigators.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Listeler Sliver Grid Navigator",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      routes: {
        '/': (context) => NavigatorExam(),
        '/AbcPage': (context) => AbcPage(),
        '/DefPage': (context) => DefPage("Def"),
        '/GhiPage': (context) => GhiPage(),
        '/JklPage': (context) => JklPage(),
        '/MnoPage': (context) => MnoPage(),
        '/PrsPage': (context) => PrsPage(),
        //'/TuvPage': (context) => TuvPage(),
        '/listpage': (context) => ListEvent(),
      },

      onGenerateRoute: (settings) {
        List<String> pathElements = settings.name.split("/"); //  /detail/$index
        if (pathElements[1] == 'detail') {
          return MaterialPageRoute(
            builder: (context) => ListDetail(
              int.parse(pathElements[2]),
            ),
          );
        }

        ///list/detail/id
        if (pathElements[1] == 'list') {
          if (pathElements[2] == 'detail') {
            return MaterialPageRoute(
              builder: (context) => TuvPage(),
            );
          } else {}
        }
        return null;
      },

      // onGenerateRoute:
      //     (settings) => //isim verilmiş rotalarda veri gönderme amaçlı
      //         MaterialPageRoute(builder: (context) => TuvPage()),
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => NavigatorExam()), // Unknownpage solve
      theme: ThemeData(primarySwatch: Colors.orange), // Tema Atama
      //home: Scaffold(
      // Home Genellikle Scaffold geçer

      // appBar: AppBar(       Sliver App Bar And Main Appbar cause errors.
      //   title: Text(
      //     "ListView Lesson",
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    ),
  );
}
