import 'package:flutter/material.dart';
import 'panels.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
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

class _BackDropHomePageState extends State<BackDropHomePage>
    with SingleTickerProviderStateMixin {
  // Instantiate an [AnimationController] for the hamburger menu icon
  AnimationController animController;

  @override
  void initState() {
    super.initState();

    // Initialize the [AnimationController] to animate in 500ms
    animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
      value: 1.0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    animController.dispose();
  }

  // To check animation status
  bool get isPanelVisible {
    AnimationStatus animStatus = animController.status;
    return animStatus == AnimationStatus.completed ||
        animStatus == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BackDrop'),
        leading: IconButton(
          icon: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: animController.view,
          ),
          onPressed: () {
            // set fling velocity based on the panel's visibility
            animController.fling(velocity: isPanelVisible ? -1.0 : 1.0);
          },
        ),
        elevation: 0.0,
        // elevation is set to 0 because it is supposed to be part of the back panel
      ),
      body: new Panels(controller: animController,),
    );
  }
}