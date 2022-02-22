import 'package:flutter/material.dart';
import 'package:lec_3/shop_provider.dart';
import 'package:provider/provider.dart';

class Shop extends StatelessWidget {
  static String routeName = "/shop";
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int qty = Provider.of<ShopManager>(context).qty;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
        actions: [Chip(label: Text("$qty"))],
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=998&q=80",
              width: 150,
            ),
            Text("Item 1"),
            IconButton(
              onPressed: () {
                Provider.of<ShopManager>(context, listen: false).increment();
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
      ),
    );
  }
}
