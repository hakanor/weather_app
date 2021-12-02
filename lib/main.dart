import 'package:flutter/material.dart';
import 'screen/home_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  //await DotEnv().load(fileName: '.env');
  await dotenv.load();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_page(),
      debugShowCheckedModeBanner: false,
      title: "Weather_App",
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

