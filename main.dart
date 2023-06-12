import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  final List<String> shoppingItems = [
    'Apples',
    'Bananas',
    'Bread',
    'Milk',
    'Eggs',
  ];

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Cart is empty'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List',style: TextStyle(fontSize: 24),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => _showSnackBar(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: shoppingItems.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text(shoppingItems[index]),
            );
          },
        ),
      ),
    );
  }
}
