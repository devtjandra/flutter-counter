import 'package:counter/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeGesture extends StatelessWidget {
  final Widget body;

  HomeGesture({@required this.body});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragEnd: (velocity) => velocity.primaryVelocity > 0
            ? context.read<MainBloc>().increment()
            : context.read<MainBloc>().decrement(),
        onVerticalDragEnd: (velocity) => velocity.primaryVelocity > 0
            ? context.read<MainBloc>().previous()
            : context.read<MainBloc>().next(),
        onLongPress: () => context.read<MainBloc>().reset(),
        child: body);
  }
}
