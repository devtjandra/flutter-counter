import 'package:counter/features/home/ui/home.dart';
import 'package:counter/features/manager/ui/manager.dart';
import 'package:counter/main_bloc.dart';
import 'package:counter/values/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainBloc(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: Routes.home,
          routes: {
            Routes.home: (context) => Home(),
            Routes.manager: (context) => Manager()
          },),
    );
  }
}
