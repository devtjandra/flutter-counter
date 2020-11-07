import 'package:counter/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeCounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            width: double.infinity,
            color: Color(0xffededed),
            child: Text(context.watch<MainBloc>().currentCounterTitle(), style: TextStyle(color: Color(0xff343434), fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          if (context.watch<MainBloc>().current != null)
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(context.watch<MainBloc>().current.count.toString(),
                    style: TextStyle(fontSize: 250, color: Color(0xff454545))),
              ),
            ),
        ],
      ),
    );
  }
}
