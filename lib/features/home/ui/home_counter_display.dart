import 'package:counter/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeCounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(context.watch<MainBloc>().currentCounterTitle()),
        if (context.watch<MainBloc>().current != null)
          Text(
            context.watch<MainBloc>().current.count.toString(),
            style: Theme.of(context).textTheme.headline4,
          ),
      ],
    );
  }
}
