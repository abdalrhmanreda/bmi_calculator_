import 'package:bmi_calculator/moduls/HomePage/HomePage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(BmiCalculator());
}


class BmiCalculator extends StatelessWidget
{
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
    );
  }
}