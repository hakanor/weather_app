import 'package:flutter/material.dart';
import 'screen/home_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_page(),
      debugShowCheckedModeBanner: false,
      title: "Weather_App",
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}


