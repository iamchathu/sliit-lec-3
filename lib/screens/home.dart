import 'package:flutter/material.dart';
import 'package:lec_3/components/list_item.dart';
import 'package:lec_3/providers/shop_provider.dart';
import 'package:lec_3/screens/about.dart';
import 'package:lec_3/screens/shop.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home';
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void _onIncrement() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          Chip(
            label: Text('${Provider.of<ShopProvider>(context).qty}'),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: _onIncrement,
            child: Text(
              "Count is $count",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const ListItem(
            content: "Content 1",
          ),
          const ListItem(
            content: "Content 2",
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(About.routeName);
            },
            child: const Text("About"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            child: const Text("Shop"),
          ),
          TextButton(
            onPressed: Provider.of<ShopProvider>(context, listen: false).reset,
            child: const Text("Reset"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _onIncrement,
      ),
    );
  }
}
