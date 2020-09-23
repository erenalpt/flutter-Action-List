import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatefulWidget {
  TextFieldIslemleri({Key key}) : super(key: key);

  @override
  _TextFieldIslemleriState createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  String metin = " ";
  FocusNode _focusNode;
  int maxLine = 1;
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _textEditingController = TextEditingController(text: "varsayılan");
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text(
          "Input Action",
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            child: FloatingActionButton(
              heroTag: "cc",
              onPressed: () {
                FocusScope.of(context).requestFocus(_focusNode);
              },
              child: Icon(
                Icons.edit,
                size: 12,
              ),
              backgroundColor: Colors.green,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: "aa",
            onPressed: () {
              _textEditingController.text = "Butondan geldim";
            },
            child: Icon(Icons.edit),
            mini: true,
            backgroundColor: Colors.pink,
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: "bb",
            onPressed: () {
              debugPrint(_textEditingController.text.toString());
            },
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Container Message",
                labelText: "Flutter, You Beautiful",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 5.0),
                ),
                icon: Icon(Icons.account_box),
                prefixIcon: Icon(Icons.whatshot),
                suffixIcon: Icon(Icons.wb_auto),
                // filled: true,
                // fillColor: Colors.red.shade50,
              ),
              controller: _textEditingController,
              style: TextStyle(fontSize: 15),
              textInputAction: TextInputAction.done,
              autofocus: false,
              focusNode: _focusNode,
              maxLines: maxLine, // Satır sayısı
              maxLength: 20, // Yazılabilecek karakter sayısı
              maxLengthEnforced: true, // karakter sınırlaması
              //onChanged: (value) => metin = value, //TextChanged
              onSubmitted: (value) => metin = value, //Onay sonrasında çalışıyor
              cursorColor: Colors.lime,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Container Message",
                labelText: "Flutter, You Beautiful",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 5.0),
                ),
                icon: Icon(Icons.account_box),
                prefixIcon: Icon(Icons.whatshot),
                suffixIcon: Icon(Icons.wb_auto),
                //filled: true,
                //fillColor: Colors.red.shade50,
              ),

              style: TextStyle(fontSize: 15),
              textInputAction: TextInputAction.done,
              autofocus: false,

              maxLines: 1, // Satır sayısı
              maxLength: 20, // Yazılabilecek karakter sayısı
              maxLengthEnforced: true, // karakter sınırlaması
              //onChanged: (value) => metin = value, //TextChanged
              onSubmitted: (value) => metin = value, //Onay sonrasında çalışıyor
              cursorColor: Colors.lime,
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            //width: double.infinity,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.blue.shade400,
            child: Align(
              alignment: Alignment.center,
              child: Text(metin),
            ),
          ),
        ],
      ),
    );
  }
}
