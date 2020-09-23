import 'package:flutter/material.dart';

class TextFormAction extends StatefulWidget {
  @override
  _TextFormActionState createState() => _TextFormActionState();
}

class _TextFormActionState extends State<TextFormAction> {
  String _nameSurname, _passw, _email;
  final formKey = GlobalKey<FormState>();
  bool autoControl = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      // data: ThemeData(
      //   primaryColor: Colors.indigo,
      //   accentColor: Colors.red,
      // ),
      data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
          hintColor: Colors.lightBlue,
          accentColor: Colors.yellow.shade800,
          errorColor: Colors.purpleAccent.shade700),

      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.voicemail),
        ),
        appBar: AppBar(
          title: Text("Text And Form Action"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
              key: formKey,
              autovalidate: autoControl, //-------
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.view_quilt),
                      hintText: "Name and Surname",
                      labelText: "Name Surname",
                      border: OutlineInputBorder(),
                    ),
                    //initialValue: "Name", değer atama
                    validator: (value) {
                      if (value.length < 6) {
                        return "Please enter Name and Surname";
                      } else
                        return null;
                    },
                    onSaved: (newValue) => _nameSurname = newValue,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.view_day),
                      hintText: "Email Adress",
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                          borderRadius:
                              BorderRadius.all(Radius.circular(14.0))),
                    ),
                    validator: _emailValidator,
                    onSaved: (newValue) => _email = newValue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.view_day),
                      hintText: "Password",
                      labelText: "Pass",
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                          borderRadius:
                              BorderRadius.all(Radius.circular(14.0))),
                    ),
                    validator: (value) =>
                        value.length < 6 ? "Password Length Short!" : null,
                    onSaved: (newValue) => _passw = newValue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton.icon(
                    icon: Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.pink,
                    disabledColor: Colors.amber,
                    onPressed: () {
                      _loginCompleted();
                    },
                  )
                ],
              )),
        ),
      ),
    );
  }

  void _loginCompleted() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint("$_nameSurname : $_email : $_passw");
    } else {
      setState(() {
        autoControl = true;
      });
    }
  }

  String _emailValidator(String email) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    if (email.contains("@") & regExp.hasMatch(email)) {
      return null;
    } else {
      return "Invalid mail adress";
    }
  }
}
