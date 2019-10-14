import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManager(),
      ),
    );
  }
}

class ProductControl extends StatelessWidget {

  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      onPressed: () {
        addProduct('Yuki');
      },
      child: Text('Add One'),
    );
  }
}

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Saver'}) {
    print('[ProductManager Widget] Construtor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManager();
  }

}

class _ProductManager extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() { // 告诉 Flutter 更新视图
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }

}

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