import 'package:flutter/material.dart';

void main() {
  var appTitle = Text('我的第一個Flutter App'),
        hiFlutter = Text('Hi,Flutter.\n今天是20220926',
        style: TextStyle(fontSize: 30, decoration: TextDecoration.underline,
        color: Colors.red,)
      );

  var img = Image.network("https://picsum.photos/250?image=9");
  var appBody = Center(

    child: img,
  );

  var appBar = AppBar(
    title: appTitle,
    backgroundColor: Color(0xff0000ff),
  );

  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
      backgroundColor: Colors.yellow,
    ),
  );
  runApp(app);
}