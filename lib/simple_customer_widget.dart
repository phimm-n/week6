import 'package:flutter/material.dart';

class SimpleCustomerWidget extends StatefulWidget {
  const SimpleCustomerWidget({super.key});

  @override
  State<SimpleCustomerWidget> createState() => _SimpleCustomerWidgetState();
}

class _SimpleCustomerWidgetState extends State<SimpleCustomerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 30,
              width: 100,
              color: Colors.amber),
            Container(
              height: 30,
              width: 100,
              color: Colors.amber),
            Container(
              height: 30,
              width: 100,
              color: Colors.amber),
          ],
        ),
      ),
    );
  }
}
