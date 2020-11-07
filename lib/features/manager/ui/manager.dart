import 'package:counter/features/manager/ui/manager_empty.dart';
import 'package:counter/features/manager/ui/manager_listing.dart';
import 'package:counter/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
          child: context.watch<MainBloc>().counters.isNotEmpty
              ? ManagerListing()
              : ManagerEmpty()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
