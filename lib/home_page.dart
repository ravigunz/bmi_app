import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
  }

  class HomePageState extends State<HomePage> {

  var weight = 0, height = 0, bmi = 0;

  final TextEditingController w = TextEditingController(text: "0");
  final TextEditingController h = TextEditingController(text: "0");

  void calBmi() {
    setState(() {
      weight = int.parse(w.text);
      height = int.parse(h.text);

      bmi = weight ~/ (height * height);
    });
  }

  void doClear() {
    setState(() {
      w.text = "";
      h.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BMI : $bmi",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Your Weight"
              ),
              controller: w,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter Your Height"
              ),
              controller: h,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("Calculate"),
                  color: Colors.greenAccent,
                  onPressed: calBmi,
                ),
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  }