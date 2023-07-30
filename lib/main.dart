import 'package:finance_me/Components/TextWidget.dart';
import 'package:finance_me/Pages/Auth/LoginPage.dart';
import 'package:finance_me/Pages/Dashboard.dart';
import 'package:finance_me/Pages/Home.dart';
import 'package:finance_me/Pages/OnBordingPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  Dashboard());
  }
}
