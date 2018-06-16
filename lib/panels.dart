import 'package:flutter/material.dart';

class Panels extends StatefulWidget {
  // Instantiate a new [AnimationController]
  final AnimationController controller;
  // Ask for [AnimationController] in the constructor.
  const Panels({this.controller});

  @override
  _PanelsState createState() => _PanelsState();
}

class _PanelsState extends State<Panels> {
  // Height for our header
  static const headerHeight = 96.0;

  // Front and Back Panels widget
  Widget fnbPanels(BuildContext context, BoxConstraints constraints) {
    final theme = Theme.of(context);

    // We implement both panels inside a [Stack] because a Stack
    // can hold multiple layers of widgets.
    return Container(
      child: Stack(
        children: <Widget>[
          //Back Panel
          Container(
            color: theme.primaryColor,
            child: Column(
              children: <Widget>[
                Text(
                  'Header 1',
                  style: TextStyle(fontSize: 16.0, color: Colors.indigoAccent),
                ),
                Text(
                  'Item 1',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Item 2',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Header 2',
                  style: TextStyle(fontSize: 16.0, color: Colors.indigoAccent),
                ),
                Text(
                  'Item 1',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Item 2',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Front Panel
          Material(
              elevation: 16.0,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: headerHeight,
                    child: new Center(
                        child: Text(
                      'Front Panel',
                      style:
                          TextStyle(fontSize: 32.0, color: theme.accentColor),
                    )),
                  ),
                  Expanded(
                    child: new Center(
                      child: Text(
                        'Dummy Contents',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: fnbPanels,
    );
  }
}
