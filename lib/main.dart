import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
      // routes: {
      //   '/homepage': (context) => HomePage(),
      // },
    );
  }
}
