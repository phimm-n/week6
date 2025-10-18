import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double _size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(

      child: Column(mainAxisAlignment:MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          height: _size,
          width: _size,
          color: Colors.amber, 
          duration: Duration(milliseconds: 500),
        ),
        
        SizedBox(height: 20,),
        AnimatedOpacity(opacity: 1.0, duration: Duration(seconds: 1),
        child: Text('Hi', style: TextStyle(fontSize: 20),),),
        ElevatedButton(onPressed: (){
          setState(() {
            _size = 200;
          });
        }, child: Text("Animated Box"))
      ],),
      )
      ,
    );
  }
}