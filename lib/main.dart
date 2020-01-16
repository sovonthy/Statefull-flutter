import 'dart:developer';
import 'package:flutter/material.dart';
import 'count.dart';

void main() => runApp(Demo());
class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter Mobile Apps"),
        ),
        body: Counter(),
        ),
    );
  }
}