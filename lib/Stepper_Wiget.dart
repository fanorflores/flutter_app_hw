import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MaterialApp(
      title: "Stepper NonI",

      home: StepperNoNi(),
    )
  );
}

class StepperNoNi extends StatefulWidget
{
  @override
  _StepperNoNiState createState() => new _StepperNoNiState();

}

class _StepperNoNiState extends State<StepperNoNi>
{
  int _currentStep=0;
  List<Step> MySteps=[
    new Step(
        title: new Text("Paso 1"),
        content:
          new Center(
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Text("datos del paso 1 "),
                  new Icon(Icons.accessibility)
                ],
              ),
            ),
          )
        ),
    new Step(
        title: new Text("Paso 2"),
        content:
        new Center(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text("datos del paso 2"),
                new Icon(Icons.mail)
              ],
            ),
          ),
        )
    ),
    new Step(
        title: new Text("Paso 3"),
        content:
        new Center(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text("datos del paso 3 "),
                new Icon(Icons.print)
              ],
            ),
          ),
        )
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pasos para ser NoNi"),
      ),
      body: new Container(
        child: new Center(
          child: new Stepper(
            type: StepperType.horizontal,
            steps: MySteps,
            currentStep: _currentStep,
            onStepContinue: ()
            {
              setState(() {
                _currentStep=  _currentStep<MySteps.length-1 ? _currentStep+1 :0;
              });
            },
            onStepCancel: ()
            {
              setState(() {
                _currentStep= _currentStep>0 ? _currentStep-1:0;
              });
            },
            onStepTapped: (step)
            {
              setState(() {
                _currentStep=step;
              });
            },
          ),
        ),
      ),
    );
  }

}