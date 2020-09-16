import 'package:flutter/material.dart';
import 'dart:math' as rnd;

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
              "Sliver Flexible Space and Grid's",
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            background: Image.asset(
              "assets/image/cats.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              constListElements(),
            ),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.all(5),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dynamicElementsCreate,
                childCount: 20),
          ),
        ),

        SliverFixedExtentList(
            //SilverList bad performance. Fixed nice :)
            delegate: SliverChildListDelegate(constListElements()),
            itemExtent: 200),

        SliverGrid(
          delegate: SliverChildListDelegate(
            constListElements(),
          ),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate(_dynamicElementsCreate, childCount: 6),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),

        SliverGrid(
          delegate:
              SliverChildBuilderDelegate(_dynamicElementsCreate, childCount: 6),
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 75),
        ),

        SliverGrid.count(
          crossAxisCount: 4,
          children: constListElements(),
        ),

        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dynamicElementsCreate,
                childCount: 3),
            itemExtent: 50)

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

  Widget _dynamicElementsCreate(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Sliver Dynamic Child List Delegate index: $index",
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.center,
      ),
      color: randomColorCreate(index),
      alignment: Alignment.center,
    );
  }

  Color randomColorCreate(int index) {
    return Color.fromARGB(rnd.Random().nextInt(255), rnd.Random().nextInt(255),
        rnd.Random().nextInt(255), rnd.Random().nextInt(255));
  }
}
