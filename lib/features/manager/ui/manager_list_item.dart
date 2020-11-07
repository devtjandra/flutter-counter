import 'package:counter/main_bloc.dart';
import 'package:counter/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManagerListItem extends StatelessWidget {
  final Counter counter;

  ManagerListItem({@required this.counter});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<MainBloc>().select(counter);
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(child: Text(counter.title)),
                Text(
                  counter.count.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          _line()
        ],
      ),
    );
  }

  Widget _line() {
    return Container(
      width: double.infinity,
      height: 1,
      color: Color(0x33000000),
    );
  }
}
