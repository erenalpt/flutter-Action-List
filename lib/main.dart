import 'package:flutter/material.dart';
import 'package:listeler/ui/date_time.dart';
import 'package:listeler/ui/other_list_elements.dart';
import 'package:listeler/ui/stepper.dart';
import 'package:listeler/ui/text_field_input_action.dart';
//import 'package:listeler/ui/action_list.dart';
//import 'package:listeler/ui/customScrollandSliverAppBar.dart';
//import 'package:listeler/ui/gridclass.dart';
import 'package:listeler/ui/navigators.dart';
import 'package:listeler/ui/text_form_action.dart';

import 'ui/navigators.dart';

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
        '/textfieldaction': (context) => TextFieldIslemleri(),
        '/formandtextform': (context) => TextFormAction(),
        '/otherformapp': (context) => OtherFormElements(),
        '/datetimepick': (context) => DateTimePickers(),
        '/stepperexam': (context) => StepperExam(),
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
