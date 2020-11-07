import 'package:flutter/material.dart';

class Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
          child: Container(child: Text("You're in the manager screen! Yay!")),
        ));
  }
}
