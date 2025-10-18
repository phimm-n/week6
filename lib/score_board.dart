import 'package:flutter/material.dart';

class CustomCountWidget extends StatefulWidget {
  final String title;
  final Color color;
  const CustomCountWidget({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  State<CustomCountWidget> createState() => _CustomCountWidgetState();
}

class _CustomCountWidgetState extends State<CustomCountWidget> {
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  int _counter= 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            widget.title, 
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: widget.color,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '$_counter',
            style: TextStyle(fontSize: 26)
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: const Text('Incrememt'),
          ),
        ],
      ),
    );
  }
}
