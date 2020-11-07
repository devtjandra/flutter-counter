import 'package:counter/main_bloc.dart';
import 'package:counter/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManagerListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = context.watch<MainBloc>().counters;

    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final counter = list[index];
          return Container(child: Text("${counter.title} ${counter.count}"));
        });
  }
}
