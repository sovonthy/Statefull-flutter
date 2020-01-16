import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Counter extends StatefulWidget {

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
    int _count = 0;
    Image _image;
  void increment() {
    setState(() {
      if(_count < 20) {
        _count++;
        switch(_count) {
          case 1:
         _image = Image.network('https://picsum.photos/250?image=9',);
          break;
          case 5:
         _image = Image.network('https://flutter.io/images/catalog-widget-placeholder.png',);
          break;
        }
      }
    });
  }
  void decrement() {
    setState(() {
       if(_count > 0) {
        _count--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("${_count}", style: TextStyle(fontSize: 70.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             FloatingActionButton(
               child: Icon(Icons.add),
               onPressed: () => increment(),
               backgroundColor: Colors.green,
               ),
              SizedBox(width: 20.0,),
             FloatingActionButton(
               child: Icon(Icons.remove),
               onPressed: () =>  decrement() ,
                backgroundColor: Colors.red,
               ),
              
              
           ],
          
          ),
          Container(
            child: _image),
         
        ],
      ),
    );
  }
}