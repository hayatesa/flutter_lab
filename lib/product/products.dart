import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Construtor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return Column(
      children: products
          .map((item) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/saber.jpg'),
            Text(item),
          ],
        ),
      ))
          .toList(),
    );
  }

}