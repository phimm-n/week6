import 'package:flutter/material.dart';

class TraficlightWidget extends StatefulWidget {
  const TraficlightWidget({super.key});

  @override
  State<TraficlightWidget> createState() => _TraficlightWidgetState();
}

class _TraficlightWidgetState extends State<TraficlightWidget> {
  String _currentLight = 'red';
  double _redOpacity = 1.0;
  double _yellowOpacity = 0.3;
  double _greenOpacity = 0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traffic Light Animation', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _redOpacity,
              duration: Duration(milliseconds: 500),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow : [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 12,
                    )
                  ]
                ),
              ),
            ),
            SizedBox(height: 8),
            AnimatedOpacity(
              opacity: _yellowOpacity,
              duration: Duration(milliseconds: 500),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow : [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 12,
                    )
                  ]
                ),
              ),
            ),
            SizedBox(height: 8),
            AnimatedOpacity(
              opacity: _greenOpacity,
              duration: Duration(milliseconds: 500),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow : [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 12,
                    )
                  ]
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_currentLight == 'red') {
                    _currentLight = 'yellow';
                    _redOpacity = 0.3;
                    _yellowOpacity = 1.0;
                    _greenOpacity = 0.3;
                  } else if (_currentLight == 'yellow') {
                    _currentLight = 'green';
                    _redOpacity = 0.3;
                    _yellowOpacity = 0.3;
                    _greenOpacity = 1.0;
                  } else {
                    _currentLight = 'red';
                    _redOpacity = 1.0;
                    _yellowOpacity = 0.3;
                    _greenOpacity = 0.3;
                  }
                });
              },
              child: Text('เปลี่ยนสี'),
            ),
          ],
        ),
      ),
    );
  }
}
