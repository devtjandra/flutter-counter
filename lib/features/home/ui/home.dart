import 'package:counter/features/home/ui/home_counter_display.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
          child: HomeCounterDisplay(),
        ));
  }
}
