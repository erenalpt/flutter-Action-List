import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimePickers extends StatefulWidget {
  @override
  _DateTimePickersState createState() => _DateTimePickersState();
}

class _DateTimePickersState extends State<DateTimePickers> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime first = DateTime(2020, now.month - 3);
    DateTime past = DateTime(2020, 9, now.day + 30);
    TimeOfDay nowTime = TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker AppBar"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: now, //Now time
                  firstDate: first, //first date
                  lastDate: past, // past time
                ).then((value) {
                  debugPrint(value.toIso8601String().toString());
                  debugPrint(value.toLocal().toString());
                  debugPrint(value.toString());
                  debugPrint(value.toUtc().toString());
                  debugPrint(value.millisecondsSinceEpoch.toString());
                  debugPrint(value.add(Duration(days: 4)).toString());
                  debugPrint(value.compareTo(first).toString());
                });
              },
              child: Text("Select Date"),
              color: Colors.teal,
            ),
            RaisedButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: nowTime,
                ).then((value) {
                  debugPrint("--------------------");
                  debugPrint(value.format(context));
                  debugPrint(value.hour.toString());
                  debugPrint(value.hourOfPeriod.toString());
                  debugPrint(value.minute.toString());
                  debugPrint(value.toString());
                });
              },
              child: Text("Select Time"),
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}
