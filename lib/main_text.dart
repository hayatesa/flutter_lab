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

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _text = 'his is the first assigment!';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            setState(() {
              _text = 'Changed!';
            });
          },
          child: Text('Change Text'),
        ),
        TextOutput(_text)
      ],
    );
  }

}

class TextOutput extends StatelessWidget {
  final String text;

  TextOutput(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }

}