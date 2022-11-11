import 'package:flutter/material.dart';
import 'package:kakao/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          titleTextStyle: TextTheme(
            headline6: TextStyle(color: Colors.black, fontSize: 24),
          ).headline6,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: MainScreen(),
    );
  }
}
