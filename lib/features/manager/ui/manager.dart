import 'package:counter/features/manager/ui/manager_empty.dart';
import 'package:counter/features/manager/ui/manager_listing.dart';
import 'package:counter/main_bloc.dart';
import 'package:counter/values/texts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Counters"),
      ),
      body: Center(
          child: context.watch<MainBloc>().counters.isNotEmpty
              ? ManagerListing()
              : ManagerEmpty()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAlert(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    debugPrint("Showing alert!");
    String text = "";

    Alert(
        context: context,
        title: Texts.createCounter,
        content: TextField(
          decoration: InputDecoration(labelText: Texts.title),
          onChanged: (value) => text = value,
        ),
        buttons: [
          DialogButton(
              child: Text("Cancel"), onPressed: () => Navigator.pop(context)),
          DialogButton(
              child: Text("Save"),
              onPressed: () {
                if (text.isEmpty) return;

                context.read<MainBloc>().add(text);
                Navigator.pop(context);
              })
        ]).show();
  }
}
