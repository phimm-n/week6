import 'package:flutter/material.dart';
import 'package:week6/score_board.dart';

class CustomCount extends StatefulWidget {
  const CustomCount({super.key});

  @override
  State<CustomCount> createState() => _CustomCountState();
}

class _CustomCountState extends State<CustomCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custome Count'),),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
        CustomCountWidget(
          title: 'Team : A',
          color: Colors.blue
        ),
        CustomCountWidget(
          title: 'Team : B',
          color: Colors.red
        )
      ])),
    );
  }
}