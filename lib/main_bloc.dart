import 'package:counter/models/counter.dart';
import 'package:flutter/material.dart';

class MainBloc extends ChangeNotifier {
  List<Counter> counters = List();
  Counter current;

  String currentCounterTitle() {
    if (current == null) return "No counter";
    else return current.title;
  }

  void increment() {

  }

  void decrement() {

  }

  void reset() {

  }
}