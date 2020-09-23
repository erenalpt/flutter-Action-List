import 'package:flutter/material.dart';

class StepperExam extends StatefulWidget {
  @override
  _StepperExamState createState() => _StepperExamState();
}

class _StepperExamState extends State<StepperExam> {
  int _activeStep = 0;
  String name, mail, passw;
  bool erors = false;

  List<Step> allSteps;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    allSteps = _allSteps();

    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper App Bar"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          controlsBuilder: (
            context, {
            VoidCallback onStepContinue,
            VoidCallback onStepCancel,
          }) {
            return Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: onStepContinue,
                  color: Colors.deepOrangeAccent,
                  child: const Text("Next"),
                ),
                SizedBox(
                  width: 15,
                ),
                RaisedButton(
                  onPressed: onStepCancel,
                  color: Colors.red.shade400,
                  child: const Text("Back"),
                ),
              ],
            );
          },
          steps: allSteps,
          currentStep: _activeStep,
          // onStepTapped: (value) {
          //   setState(() {
          //     _activeStep = value;
          //   });
          // },
          onStepContinue: () {
            setState(() {
              _continueButtonControl();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_activeStep > 0) {
                _activeStep--;
              } else {
                _activeStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _allSteps() {
    List<Step> steps = [
      Step(
        title: Text("Username"),
        subtitle: Text("Username Subtitle"),
        state: _stapChecks(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
              labelText: "Username Label",
              hintText: "Username Hint",
              border: OutlineInputBorder()),
          validator: (value) {
            if (value.length < 6) {
              return "Username too short.";
            }
          },
          onSaved: (value) {
            name = value;
          },
        ),
      ),
      Step(
        title: Text("Mail Adress"),
        subtitle: Text("Mail Adress Subtitle"),
        state: _stapChecks(1),
        isActive: true,
        content: TextFormField(
          key: key1,
          decoration: InputDecoration(
              labelText: "Mail Adress Label",
              hintText: "Mail Adress Hint",
              border: OutlineInputBorder()),
          validator: (value) {
            if (value.length < 6 || !value.contains('@')) {
              return "Mail Adress not valid.";
            }
          },
          onSaved: (value) {
            mail = value;
          },
        ),
      ),
      Step(
        title: Text("Password Number"),
        subtitle: Text("Password Subtitle"),
        state: _stapChecks(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          decoration: InputDecoration(
              labelText: "Password Label",
              hintText: "Password Hint",
              border: OutlineInputBorder()),
          validator: (value) {
            if (value.length < 6) {
              return "Password too short.";
            }
          },
          onSaved: (value) {
            passw = value;
          },
        ),
      ),
    ];
    return steps;
  }

  StepState _stapChecks(int i) {
    if (_activeStep == i) {
      if (erors) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _continueButtonControl() {
    switch (_activeStep) {
      case 0:
        if (key0.currentState.validate()) {
          key0.currentState.save();
          erors = false;
          _activeStep = 1;
        } else {
          erors = true;
        }
        break;
      case 1:
        if (key1.currentState.validate()) {
          key1.currentState.save();
          erors = false;
          _activeStep = 2;
        } else {
          erors = true;
        }
        break;
      case 3:
        if (key2.currentState.validate()) {
          key2.currentState.save();
          erors = false;
          _activeStep = 2;
          formOkay();
        } else {
          erors = true;
        }
        break;
    }
  }

  void formOkay() {
    debugPrint("Name: => $name \nMail Adress: $mail \nPassword: $passw");
  }
}
