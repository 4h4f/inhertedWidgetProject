import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColorPassing extends InheritedWidget {
  final int counter;
  const ColorPassing({super.key, required this.counter, required super.child});

  @override
  bool updateShouldNotify(ColorPassing old) => counter != old.counter;

  static ColorPassing of(BuildContext context) {
    final ColorPassing? result =
        context.dependOnInheritedWidgetOfExactType<ColorPassing>();
    assert(result != null, 'no color found in context');
    return result!;
  }
}
