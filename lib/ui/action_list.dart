import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class ActionList extends StatelessWidget {
  List<Ogrenci> ogrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVeri();
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0) {
          return Container(
            height: 2,
            color: Colors.red.shade500,
            margin: EdgeInsets.all(10),
          );
        } else {
          return Container(
            margin: EdgeInsets.all(10),
          );
        }
      },
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          elevation: 12,
          color: index % 2 == 0 ? Colors.orangeAccent : Colors.amberAccent,
          child: ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(ogrenciler[index]._isim),
            subtitle: Text(ogrenciler[index]._aciklama),
            trailing: Icon(ogrenciler[index]._cinsiyet ? Icons.add : Icons.adb),
            onTap: () {
              debugPrint(ogrenciler[index].toString());
              toastMessage(index, false);
            },
            onLongPress: () {
              debugPrint(ogrenciler[index].toString());
              toastMessage(index, true);
              alertDialogGoster(context, index);
            },
          ),
        );
      },
    );
  }

  void alertDialogGoster(BuildContext cntxt, int indx) {
    showDialog(
        context: cntxt,
        //barrierColor: Colors.blue,
        barrierDismissible: false,
        builder: (cntxt) {
          return AlertDialog(
            title: Text("Alert Dialog Title"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Ogrenci Adı: " + ogrenciler[indx]._isim),
                  Text("Ogrenci Aciklaması: " + ogrenciler[indx]._aciklama),
                ],
              ),
            ),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text("Ok"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(cntxt).pop();
                    },
                    child: Text("No"),
                  )
                ],
              ),
            ],
          );
        });
  }

  void ogrenciVeri() {
    ogrenciler = List.generate(
        300,
        (index) => Ogrenci(
            "${index + 1} Student",
            "${index + 1}. Student description",
            index % 2 == 0 ? true : false));
  }

  void toastMessage(int index, bool uzunBas) {
    Fluttertoast.showToast(
        msg: !uzunBas
            ? "Kısa basıldı " + ogrenciler[index].toString()
            : "Uzun basıldı " + ogrenciler[index].toString(),
        toastLength: !uzunBas ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Seçilen öğrenci id: $_isim. Öğrencinin açıklaması: $_aciklama. Cinsiyeti: $_cinsiyet";
  }
}
