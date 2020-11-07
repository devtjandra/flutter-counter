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
    // TODO: Check for unique title
    final newCounter = Counter(count: 0, title: title);
    counters.add(newCounter);
    current = newCounter;
    notifyListeners();
  }

  void increment() {
    if (current == null) return;

    current.count++;
    notifyListeners();
  }

  void decrement() {
    if (current == null) return;

    if (current.count > 0) current.count--;
    notifyListeners();
  }

  void reset() {
    if (current == null) return;

    current.count = 0;
    notifyListeners();
  }

  void previous() {
    if (current == null) return;

    final index = counters.indexOf(current);
    if (index <= 0) return;

    current = counters[index - 1];
    notifyListeners();
  }

  void next() {
    if (current == null) return;

    final index = counters.indexOf(current);
    if (index >= counters.length - 1) return;

    current = counters[index + 1];
    notifyListeners();
  }

  void select(Counter counter) {
    current = counter;
    notifyListeners();
  }
}
