import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shop app',
      theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black54))),
      home: HomeScreen(),
    );
  }
}
