import 'package:flutter/material.dart';
import 'package:lec_3/components/layout.dart';
import 'package:lec_3/components/list_item.dart';
import 'package:lec_3/screens/about.dart';
import 'package:lec_3/screens/shop.dart';
import 'package:lec_3/shop_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static String routeName = '/home';
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
    print("Count is $count");
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "Home",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: _onIncrement,
            child: Text("Count is $count"),
          ),
          Text("Cart qty is : ${Provider.of<ShopManager>(context).qty}"),
          ListItem(
            content: "Content 1",
          ),
          ListItem(
            content: "Content 2",
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(About.routeName);
            },
            child: Text("About"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            child: Text("Shop"),
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
