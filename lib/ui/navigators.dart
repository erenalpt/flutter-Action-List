import 'package:flutter/material.dart';

class NavigatorExam extends StatelessWidget {
  final String baslik = "Def Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigator Exam",
          style: TextStyle(
              color: Colors.red, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Abc Page Raised Button",
                textAlign: TextAlign.center,
              ),
              color: Colors.orange,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/");
              },
            ),
            RaisedButton(
              child: Text(
                "Def Page Raised Button",
                textAlign: TextAlign.center,
              ),
              color: Colors.orange,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/DefPage");
              },
            ),
            RaisedButton(
              child: Text(
                "Ghi Page Raised Button",
                textAlign: TextAlign.center,
              ),
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GhiPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                "Jkl Page Raised Button and Scrap Data",
                textAlign: TextAlign.center,
              ),
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JklPage(),
                  ),
                ).then((value) {
                  debugPrint("Pop Event $value");
                });
              },
            ),
            RaisedButton(
              child: Text(
                "Mno Page Raised Button and Not Back",
                textAlign: TextAlign.center,
              ),
              color: Colors.orange,
              onPressed: () {
                Navigator.pushNamed(context, "/PrsPage");
              },
            ),
            RaisedButton(
              child: Text(
                "Go To List Event",
                textAlign: TextAlign.center,
              ),
              color: Colors.orange,
              onPressed: () {
                Navigator.pushNamed(context, "/listpage");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Event",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/detail/$index");
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("List Elements : $index"),
                ),
              ),
            );
          },
          itemCount: 60,
        ),
      ),
    );
  }
}

class ListDetail extends StatelessWidget {
  int clickIndex = 0;
  ListDetail(this.clickIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Detail Page",
          style: TextStyle(fontSize: 14, color: Colors.brown.shade800),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text("List Detail $clickIndex"),
        ),
      ),
    );
  }
}

class MnoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mno Page",
          style: TextStyle(
              color: Colors.teal, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Mno Page Text",
              style: TextStyle(color: Colors.orange),
              textAlign: TextAlign.right,
            ),
            RaisedButton(
              child: Text("Go to Prs Page"),
              onPressed: () {
                Navigator.pushNamed(
                    //login and splash screen usage
                    context,
                    "/MnoPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PrsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Prs Page",
          style: TextStyle(
              color: Colors.teal, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Prs Page Text",
              style: TextStyle(color: Colors.orange),
              textAlign: TextAlign.right,
            ),
            RaisedButton(
              child: Text("Go to Tuv Page"),
              onPressed: () {
                Navigator.pushNamed(context, "/TuvPage");
              },
            )
          ],
        ),
      ),
    );
  }
}

class TuvPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tuv Page",
          style: TextStyle(
              color: Colors.teal, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Tuv Page Text",
              style: TextStyle(color: Colors.orange),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}

class AbcPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Abc Page",
          style: TextStyle(
              color: Colors.teal, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Abc Page Text",
              style: TextStyle(color: Colors.orange),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}

class DefPage extends StatelessWidget {
  final String titleDef;
  DefPage(this.titleDef);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleDef,
          style: TextStyle(
              color: Colors.teal, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Def Page Text",
              style: TextStyle(color: Colors.orange),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}

class GhiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ghi Page Title",
          style: TextStyle(
              color: Colors.teal, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ghi Page Text",
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.right,
            ),
            RaisedButton(
              color: Colors.purple,
              child: Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            RaisedButton(
              color: Colors.purple,
              child: Text("Go To Abc Page"),
              onPressed: () {
                Navigator.pushNamed(context, "/AbcPage");
              },
            ),
            RaisedButton(
              color: Colors.purple,
              child: Text("Go To Jkl Page and Data Scrap"),
              onPressed: () {
                Navigator.pushNamed(context, "/JklPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class JklPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          debugPrint("On Will Pop running");
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Jkl Page Title",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 14,
                  fontStyle: FontStyle.italic),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Jkl Page Text",
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.right,
                ),
                RaisedButton(
                  color: Colors.purple,
                  child: Text("Go To Abc Page"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/AbcPage");
                  },
                ),
                RaisedButton(
                  color: Colors.purple,
                  child: Text("Back and Data Scrap"),
                  onPressed: () {
                    Navigator.pop<bool>(context, true);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
