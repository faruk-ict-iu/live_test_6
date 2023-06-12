import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Shopping List'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                showSnackbar(context, 'Cart is empty');
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Apples'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Bananas'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Bread'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Milk'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Eggs'),
            ),
            // Add more ListTiles for other shopping items
          ],
        ),
      ),
    );
  }

   showSnackbar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
