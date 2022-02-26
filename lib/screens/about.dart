import 'package:flutter/material.dart';
import 'package:lec_3/components/layout.dart';

class About extends StatelessWidget {
  static const String routeName = '/about';
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "About",
      body: Column(
        children: [
          const Text("About "),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Home"),
          )
        ],
      ),
    );
  }
}
