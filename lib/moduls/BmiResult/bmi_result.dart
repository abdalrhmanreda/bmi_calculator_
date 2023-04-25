import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Result extends StatefulWidget {
  final int a , w  ;
  final double h ;
  final bool isM ;
  final double res ;

  Result({super.key, required this.res ,  required this.isM ,required this.a , required this.w ,required this.h});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff23272c),
      ),
      backgroundColor: const Color(0xff23272c),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI Result : ${widget.res.round()}' ,
              style: const TextStyle(
                  fontFamily: 'Nerko' ,
                  fontSize: 35 ,
                  color: Colors.white

              ),
            ) ,
            Text(
              'Gender : ${widget.isM?'Male':'Female'}' ,
              style: const TextStyle(
                  fontFamily: 'Nerko' ,
                  fontSize: 35 ,
                  color: Colors.white

              ),
            ) ,
            Text(
              'Age : ${widget.a}' ,
              style: const TextStyle(
                  fontFamily: 'Nerko' ,
                  fontSize: 35 ,
                  color: Colors.white

              ),
            ) ,
            Text(
              'Weight : ${widget.w}' ,
              style: const TextStyle(
                  fontFamily: 'Nerko' ,
                  fontSize: 35 ,
                  color: Colors.white

              ),
            ) ,
            Text(
              'Height : ${widget.h.round()}' ,
              style: const TextStyle(
                  fontFamily: 'Nerko' ,
                  fontSize: 35 ,
                  color: Colors.white

              ),
            ) ,

          ],
        ),
      ),
    );
  }
}
