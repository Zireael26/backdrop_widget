import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Backdrop Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo,
        accentColor: Colors.pinkAccent,
      ),
      home: new BackDropHomePage(),
    );
  }
}

class BackDropHomePage extends StatefulWidget {
  @override
  _BackDropHomePageState createState() => _BackDropHomePageState();
}

class _BackDropHomePageState extends State<BackDropHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('BackDrop'),
      ),
      body: Container(),
    );
  }
}