import 'package:first_flutter_app/text/text_output.dart';
import 'package:flutter/material.dart';

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