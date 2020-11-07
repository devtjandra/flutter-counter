import 'package:counter/features/home/ui/home_counter_display.dart';
import 'package:counter/features/home/ui/home_gesture.dart';
import 'package:counter/values/routes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeGesture(
        body: Scaffold(
            appBar: AppBar(
              title: Text("Counter App"),
              actions: [
                IconButton(
                    icon: Icon(Icons.list),
                    onPressed: () =>
                        Navigator.pushNamed(context, Routes.manager))
              ],
            ),
            body: Center(
              child: HomeCounterDisplay(),
            )));
  }
}
