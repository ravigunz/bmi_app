import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
  }

  class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Container(

      ),
    );
  }
  }