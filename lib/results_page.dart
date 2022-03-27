import 'package:flutter/material.dart';
import 'package:bmi_app/formula.dart';

class ResultsPage extends StatefulWidget {
  // const ResultsPage({Key? key}) : super(key: key);
  int weight;
  int height;
  int age;
  ResultsPage({@required this.weight = 50, @required this.height = 160, this.age = 25});
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Logic logic = Logic();
  double bmiResult = 0;
@override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI RESULT",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,

            ),
            ),
            Text('${bmiResult.toStringAsFixed(2)}',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 60,
              fontWeight: FontWeight.w600,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
