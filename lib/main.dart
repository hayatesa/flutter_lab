import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animate',
      home: Container(
        child: Scaffold(
          body: Center(
            child: AnimateObj(),
          ),
        ),
      ),
    );
  }
}

class AnimateObj extends StatefulWidget {
  AnimateObj({Key key}) : super(key: key);

  _AnimateObjState createState() => _AnimateObjState();
}

class _AnimateObjState extends State<AnimateObj> {
  AnimationController _wController;
  AnimationController _hController;
  AnimationController _colorController;
  Tween<double> _w;
  Tween<double> _h;
  Tween<Color> _color;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(),
    );
  }
}
