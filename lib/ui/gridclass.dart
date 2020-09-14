import 'package:flutter/material.dart';

class GridClassOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // GridView.builder(gridDelegate: null, itemBuilder: null)
    //Etkin çalışması istenilen bir gridview için kullanılması gerekir.

    return GridView.builder(
      itemCount: 1000,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.red[100 * (index % 6)],
          child: Text(
            "Containers",
            textAlign: TextAlign.center,
          ),
        );
      },
    );

    // return GridView.extent(
    //   maxCrossAxisExtent: 100, //cross-axis extent 100 GridView.builder
    //   crossAxisCount: 3, GridView.count
    //   primary: true,
    //   reverse: true, Start: End container first. Example: show the new message at the top.
    //   scrollDirection: Axis.vertical, // horizontal or vertical
    //   padding: EdgeInsets.all(8),
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   children: <Widget>[
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container Bro.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container Bro.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container Bro.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       color: Colors.blue.shade200,
    //       child: Text(
    //         "I'm Container.",
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //   ],
    // );
  }
}
