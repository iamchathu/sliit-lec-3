import 'package:flutter/material.dart';

class ColorManager extends InheritedWidget {
  final Color primaryColor = Colors.green;

  const ColorManager({
    Key? key,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(ColorManager oldWidget) {
    return oldWidget.primaryColor != primaryColor;
  }

  static ColorManager of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorManager>()!;
  }
}
