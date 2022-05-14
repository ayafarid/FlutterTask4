import 'package:flutter/material.dart';
import 'screenOne.dart';
import 'screenTwo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=> const ScreenOne(),
        '/screen2':(context)=> const ScreenTwo(title: 'Aya Farid',),
      },
      title: 'Flutter Demo',
    );
  }
}