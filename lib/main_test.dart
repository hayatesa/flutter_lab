import 'package:first_flutter_app/text/text_control.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assigment 1'),
          ),
          body: TextControl()
      ),
    );
  }
}
