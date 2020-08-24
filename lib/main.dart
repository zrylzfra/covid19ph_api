import 'package:flutter/material.dart';
import 'package:covid19ph_api/widgets/home_view/home_view.dart';

void main() {
  runApp(Covid19PH());
}

class Covid19PH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 PH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
    );
  }
}
