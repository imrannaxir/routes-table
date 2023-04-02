import 'package:flutter/material.dart';
import 'package:routes/third_screen.dart';
import 'first_screen.dart';
import 'second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YA ALLAH',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: FirstScreen.id,
      routes: {
        FirstScreen.id: (context) {
          return const FirstScreen(title: 'First Screen');
        },
        SecondScreen.id: (context) {
          return const SecondScreen();
        },
        ThirdScreen.id: (context) {
          return const ThirdScreen();
        }
      },
    );
  }
}
