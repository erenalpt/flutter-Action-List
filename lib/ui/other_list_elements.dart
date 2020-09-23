import 'package:flutter/material.dart';

class OtherFormElements extends StatefulWidget {
  OtherFormElements({Key key}) : super(key: key);

  @override
  _OtherFormElementsState createState() => _OtherFormElementsState();
}

class _OtherFormElementsState extends State<OtherFormElements> {
  bool checkBox = false;
  bool switchVal = false;
  String city = "";
  double sliders = 0;
  String _selectColor = "Red";
  List<String> cities = [
    "Adana",
    "Mersin",
    "Şanlı Urfa",
    "Mardin",
    "Gaziantep",
    "Erzurum"
  ];

  String selectedCity = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.apps),
      ),
      appBar: AppBar(
        title: Text("Other Material Elements"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            CheckboxListTile(
              activeColor: Colors.blueAccent,
              checkColor: Colors.black,
              contentPadding: EdgeInsets.all(20),
              value: checkBox,
              onChanged: (value) {
                setState(() {
                  checkBox = value;
                });
              },
              title: Text("CheckBox Title"),
              subtitle: Text("Checkbox Subtitle"),
              secondary: Icon(Icons.check_circle),
            ),
            RadioListTile<String>(
              value: "Adana",
              title: Text("Adana"),
              subtitle: Text("Adana Radio Subtitle"),
              secondary: Icon(Icons.subway),
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
            ),
            RadioListTile<String>(
              value: "Hakkari",
              title: Text("Hakkari"),
              subtitle: Text("Hakkari Radio Subtitle"),
              secondary: Icon(Icons.subway),
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
            ),
            RadioListTile<String>(
              value: "Gaziantep",
              groupValue: city,
              title: Text("Gaziantep"),
              subtitle: Text("Gaziantep Radio Subtitle"),
              secondary: Icon(Icons.subway),
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
            ),
            SwitchListTile(
              title: Text("Switch Title Text"),
              subtitle: Text("Switch Subtitle Text"),
              activeColor: Colors.blueAccent,
              activeTrackColor: Colors.orange,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.green,
              value: switchVal,
              secondary: Icon(Icons.wrap_text),
              onChanged: (value) {
                setState(() {
                  switchVal = value;
                });
              },
            ),
            Text("Selected Sliders"),
            Slider(
              min: 0,
              value: sliders,
              max: 100,
              onChanged: (value) {
                setState(() {
                  sliders = value;
                });
              },
              divisions: 100,
              label: sliders.toString(),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.red,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Red"),
                    ],
                  ),
                  value: "Red",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Green"),
                    ],
                  ),
                  value: "Green",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.blue,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Blue"),
                    ],
                  ),
                  value: "Blue",
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectColor = value;
                });
              },
              hint: Text("Select"),
              value: _selectColor,
            ),
            DropdownButton<String>(
              items: cities
                  .map(
                    (e) => DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
              hint: Text("Select"),
              value: selectedCity,
            ),
          ],
        ),
      ),
    );
  }
}
