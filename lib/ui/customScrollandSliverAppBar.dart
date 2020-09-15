import 'package:flutter/material.dart';

class ScrollAndSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          // title: Text(
          //   "Sliver App Bar",
          // ),
          backgroundColor: Colors.red,
          expandedHeight: 300,
          shadowColor: Colors.black,
          floating: false,
          pinned: true, //Title text Scroll seen
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Sliver Flexible Space",
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            background: Image.asset(
              "assets/image/cats.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            constListElements(),
          ),
        ),
        //SliverFixedExtentList(delegate: null, itemExtent: null),
        //SliverGrid(delegate: null, gridDelegate: null),
        // SliverGrid.extent(maxCrossAxisExtent: 100),
        // SliverGrid.count(crossAxisCount: 3),
      ],
    );
  }

  List<Widget> constListElements() {
    return [
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 1",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 2",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.indigo,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 3",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 4",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.green,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 5",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.grey,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 6",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.lightBlue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 7",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.lime,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 8",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.indigo,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sliver Child List Delegate 9",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
    ];
  }
}
