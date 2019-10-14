import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
              child: ListView(
                children: <Widget>[
                  FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: 'https://picsum.photos/250?image=9',
                  ),
                  FadeInImage.assetNetwork(
                    placeholder: 'assets/loading.gif',
                    image: 'https://picsum.photos/250?image=10',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
