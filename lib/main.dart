import 'package:diceapp/controller/mycontroller.dart';
import 'package:diceapp/views/homepage.dart';
import 'package:diceapp/views/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyController(),
        )
      ],
      child: MaterialApp(
        // home: HomeScreen(),
        home: Homepage(),
      ),
    );
  }
}
