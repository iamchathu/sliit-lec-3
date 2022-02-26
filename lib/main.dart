import 'package:flutter/material.dart';
import 'package:lec_3/providers/shop_provider.dart';
import 'package:lec_3/screens/about.dart';
import 'package:lec_3/screens/home.dart';
import 'package:lec_3/screens/shop.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => const Home(),
          About.routeName: (context) => const About(),
          Shop.routeName: (context) => const Shop(),
        },
      ),
    );
  }
}
