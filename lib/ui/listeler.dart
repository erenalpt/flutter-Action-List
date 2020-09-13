import 'package:flutter/material.dart';

class ListViewCourse extends StatelessWidget {
  final List<int> listeNum = List.generate(300, (index) => index);
  final List<String> listeSubTitle =
      List.generate(300, (index) => "Ben {$index}. Subtitleyim.");

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listeNum
            .map(
              (e) => Column(
                children: <Widget>[
                  Container(
                    child: Card(
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(20),
                      shadowColor: Colors.black,
                      elevation: 1.0,
                      child: ListTile(
                        //İlk iconun içeriği
                        leading: CircleAvatar(
                          child: Icon(Icons.android),
                          radius: 12,
                        ),
                        title: Text(
                          "$e. Listview Elemanı ",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(listeSubTitle[e]),
                        trailing: Icon(Icons.add_circle),
                      ),
                    ),
                  ),
                ],
              ),
            )
            .toList());
  }
}
