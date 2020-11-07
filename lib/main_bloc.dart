import 'package:counter/models/counter.dart';
import 'package:counter/values/texts.dart';
import 'package:flutter/material.dart';

class MainBloc extends ChangeNotifier {
  List<Counter> counters = List();
  Counter current;

  String currentCounterTitle() {
    if (current == null)
      return Texts.homeNull;
    else
      return current.title;
  }

  void add(String title) {
    debugPrint("Adding $title");
  }

  void increment() {}

  void decrement() {}

  void reset() {}
}
