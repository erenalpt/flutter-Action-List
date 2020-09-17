import 'package:flutter/material.dart';

class GridClassOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // GridView.builder(gridDelegate: null, itemBuilder: null)
    //Etkin çalışması istenilen bir gridview için kullanılması gerekir.

    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              // border: Border(
              //   top: BorderSide(
              //       color: Colors.red, width: 6, style: BorderStyle.solid),
              // ),
              border: Border.all(
                  color: Colors.red, width: 2, style: BorderStyle.solid),
              boxShadow: [
                BoxShadow(
                    color: Colors.orangeAccent,
                    offset: Offset(5, 5),
                    blurRadius: 5)
              ],
              borderRadius:
                  BorderRadius.all(Radius.circular(index % 3 == 0 ? 50 : 5)),
              color: Colors.red[100 * (index % 9)],
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.amber],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: DecorationImage(
                  image: AssetImage("assets/image/cats.png"),
                  fit: BoxFit.fill,
                  alignment: Alignment.center),
            ),
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Hi, I'm CatsO",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          onTap: () => debugPrint("OnTop $index click"),
          onDoubleTap: () => debugPrint("OnDoubleTop $index click"),
          onLongPress: () => debugPrint("OnLongPress $index click"),
          onLongPressStart: (details) =>
              debugPrint("OnLongPress $index $details "),
          onHorizontalDragStart: (details) =>
              debugPrint("onHorizontalDragStart $index $details"),
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
